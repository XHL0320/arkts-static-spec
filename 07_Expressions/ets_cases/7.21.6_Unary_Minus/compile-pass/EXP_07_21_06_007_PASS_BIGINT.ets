/**
 * @id EXP_07_21_06_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.6
 * @design 验证 bigint 类型一元负号编译通过。bigint 结果保持为 bigint。
 * @note 正向用例：-bigint 编译通过
 */
function test_bigint_unary_minus(): void {
    let x: bigint = 1n;
    let y: bigint = -x;
}
