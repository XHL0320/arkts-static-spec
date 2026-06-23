/**
 * @id EXP_07_21_06_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 short 类型一元负号编译通过。short 结果拓宽为 int。
 * @note 正向用例：-short → int 拓宽
 */
function test_short_unary_minus(): void {
    let x: short = 1;
    let y: int = -x;
}
