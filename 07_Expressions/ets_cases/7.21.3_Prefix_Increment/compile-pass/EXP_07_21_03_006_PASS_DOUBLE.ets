/**
 * @id EXP_07_21_03_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 double 类型前置递增编译通过。
 * @note 正向用例：double 前置递增
 */
function test_double_preinc(): void {
    let x: double = 3.14;
    ++x;
}
