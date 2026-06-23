/**
 * @id EXP_07_21_03_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 short 类型前置递增编译通过。结果类型保持为 short。
 * @note 正向用例：short 前置递增
 */
function test_short_preinc(): void {
    let x: short = 1;
    ++x;
}
