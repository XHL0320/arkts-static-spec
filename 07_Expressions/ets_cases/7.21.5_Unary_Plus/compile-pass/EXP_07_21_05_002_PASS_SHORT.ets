/**
 * @id EXP_07_21_05_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.5
 * @design 验证 short 类型一元正号编译通过。
 *         short 结果拓宽为 int，可赋值给 int 变量。
 * @note 正向用例：+short → int 拓宽
 */
function test_short_unary_plus(): void {
    let x: short = 1;
    let y: int = +x;  // short → int widening
}
