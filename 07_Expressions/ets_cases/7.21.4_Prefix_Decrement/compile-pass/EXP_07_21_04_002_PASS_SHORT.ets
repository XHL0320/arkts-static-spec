/**
 * @id EXP_07_21_04_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 short 类型前置递减编译通过。结果类型保持为 short。
 * @note 正向用例：short 前置递减
 */
function test_short_predec(): void {
    let x: short = 1;
    --x;
}
