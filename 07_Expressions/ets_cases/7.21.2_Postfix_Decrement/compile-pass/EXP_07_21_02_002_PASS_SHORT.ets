/**
 * @id EXP_07_21_02_002_PASS_SHORT
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 short 类型后置递减编译通过。
 *         short 结果类型保持为 short。
 * @note 正向用例：short 后置递减编译通过
 */
function test_short_decrement(): void {
    let x: short = 1;
    x--;
}
