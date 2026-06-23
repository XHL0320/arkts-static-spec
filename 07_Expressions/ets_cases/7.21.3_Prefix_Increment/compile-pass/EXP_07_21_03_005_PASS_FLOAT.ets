/**
 * @id EXP_07_21_03_005_PASS_FLOAT
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 float 类型前置递增编译通过。
 * @note 正向用例：float 前置递增
 */
function test_float_preinc(): void {
    let x: float = 1.5 as float;
    ++x;
}
