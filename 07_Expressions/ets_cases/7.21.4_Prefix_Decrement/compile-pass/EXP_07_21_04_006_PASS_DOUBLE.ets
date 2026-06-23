/**
 * @id EXP_07_21_04_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 double 类型前置递减编译通过。
 * @note 正向用例：double 前置递减
 */
function test_double_predec(): void {
    let x: double = 3.14;
    --x;
}
