/**
 * @id EXP_07_21_04_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 bigint 类型前置递减编译通过。
 * @note 正向用例：bigint 前置递减
 */
function test_bigint_predec(): void {
    let x: bigint = 1n;
    --x;
}
