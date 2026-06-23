/**
 * @id EXP_07_21_06_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 int 类型一元负号编译通过。int 结果仍为 int。
 * @note 正向用例：-int 编译通过
 */
function test_int_unary_minus(): void {
    let x: int = 5;
    let y: int = -x;
}
