/**
 * @id EXP_07_20_003_PASS_NULL_LHS
 * @expect compile-pass
 * @section 7.20
 * @design 验证 null ?? 42 编译通过。
 *         LHS 为 null（空值），表达式取 RHS。
 * @note 正向用例：null LHS 编译通过
 */
function test_null_lhs(): void {
    let x: int = null ?? 42;
}
