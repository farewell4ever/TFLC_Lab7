#!/bin/bash
set -e
cd "$(dirname "$0")"

cfg() {
    local ll=$1 dir=$2
    mkdir -p "$dir"
    (cd "$dir" && opt -passes=dot-cfg -disable-output "../$(basename "$ll")" 2>/dev/null)
    for f in "$dir"/.*.dot; do
        [ -e "$f" ] || continue
        local name=$(basename "$f" .dot)
        dot -Tpng "$f" -o "$dir/cfg${name}.png"
    done
}

echo "== Общая часть: general/main.c"
cd general
clang -Xclang -ast-dump -fsyntax-only -fno-color-diagnostics main.c > main_ast.txt
clang -S -emit-llvm main.c -o main.ll
clang -O0 -S -emit-llvm main.c -o main_O0.ll
clang -O2 -S -emit-llvm main.c -o main_O2.ll
diff main_O0.ll main_O2.ll > main_diff.txt || true
clang -O0 -Xclang -disable-O0-optnone -S -emit-llvm main.c -o main_O0_noopt.ll
opt -passes=mem2reg -S main_O0_noopt.ll -o main_mem2reg.ll
opt -O2 -S main_O0_noopt.ll -o main_opt_O2_noinline.ll
clang -O2 -Xclang -disable-llvm-passes -S -emit-llvm main.c -o main_raw.ll
opt -O2 -S main_raw.ll -o main_opt_O2.ll
cfg main_O0.ll cfg_O0
cfg main_O2.ll cfg_O2
cd ..

echo "== Индивидуальная часть: individual/complex.cpp"
cd individual
clang++ -Xclang -ast-dump -fsyntax-only -fno-color-diagnostics complex.cpp | sed -n '/FunctionDecl.*<complex.cpp/,$p' > complex_ast.txt
clang++ -Xclang -ast-dump -fsyntax-only -fno-color-diagnostics calc.cpp | sed -n '/FunctionDecl.*<calc.cpp/,$p' > calc_ast.txt
for o in O0 O1 O2 O3; do
    clang++ -$o -S -emit-llvm complex.cpp -o complex_$o.ll
done
diff complex_O1.ll complex_O2.ll > complex_diff_O1_O2.txt || true
diff complex_O2.ll complex_O3.ll > complex_diff_O2_O3.txt || true
clang++ -O2 -fno-inline -S -emit-llvm complex.cpp -o complex_O2_noinline.ll
cfg complex_O0.ll cfg_O0
cfg complex_O2.ll cfg_O2
clang++ -O2 complex.cpp -o complex && ./complex > complex_output.txt
for o in O0 O1 O2 O3; do
    clang++ -$o -S -emit-llvm calc.cpp -o calc_$o.ll
done
clang++ -O2 -ffast-math -S -emit-llvm calc.cpp -o calc_O2_fastmath.ll
diff calc_O1.ll calc_O2.ll > calc_diff_O1_O2.txt || true
diff calc_O2.ll calc_O3.ll > calc_diff_O2_O3.txt || true
cfg calc_O2.ll cfg_calc_O2
cfg calc_O2_fastmath.ll cfg_calc_fastmath
rm -f complex
cd ..

echo "== Статистика"
for f in general/main_O0.ll general/main_O2.ll individual/complex_O0.ll individual/complex_O1.ll individual/complex_O2.ll individual/complex_O3.ll individual/calc_O0.ll individual/calc_O2.ll individual/calc_O2_fastmath.ll; do
    printf "%-28s define=%-3s alloca=%-3s load=%-3s store=%-3s call=%-3s строк=%s\n" "$f" \
        "$(grep -c '^define' "$f")" "$(grep -c ' alloca ' "$f")" "$(grep -c ' load ' "$f")" \
        "$(grep -c ' store ' "$f")" "$(grep -cE ' (call|invoke) ' "$f")" "$(wc -l < "$f")"
done
clang --version | head -1
echo "Готово"
