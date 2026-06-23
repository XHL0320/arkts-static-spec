/**
 * @id EXP_07_21_06_008_PASS_NEGATE_INT_MIN
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 -int.MIN_VALUE 编译通过。
 *         spec 规定 int.MIN_VALUE 求反溢出但不报错（包装行为）。
 * @note 正向用例：-int.MIN 静默包装
 */
function test_negate_int_min(): void {
    let x: int = -2147483648;
    let y: int = -x;  // 溢出包装不报错
}
