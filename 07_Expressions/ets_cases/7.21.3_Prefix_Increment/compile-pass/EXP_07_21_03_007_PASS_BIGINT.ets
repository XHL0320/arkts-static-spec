/**
 * @id EXP_07_21_03_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 bigint 类型前置递增编译通过。
 * @note 正向用例：bigint 前置递增
 */
function test_bigint_preinc(): void {
    let x: bigint = 1n;
    ++x;
}
