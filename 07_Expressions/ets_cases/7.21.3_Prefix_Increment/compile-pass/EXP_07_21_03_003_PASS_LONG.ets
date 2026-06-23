/**
 * @id EXP_07_21_03_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 long 类型前置递增编译通过。
 * @note 正向用例：long 前置递增
 */
function test_long_preinc(): void {
    let x: long = 10000000000;
    ++x;
}
