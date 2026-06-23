/**
 * @id EXP_07_21_04_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 long 类型前置递减编译通过。
 * @note 正向用例：long 前置递减
 */
function test_long_predec(): void {
    let x: long = 10000000000;
    --x;
}
