/**
 * @id EXP_07_20_033_RUNTIME_NULL_LHS
 * @expect runtime
 * @section 7.20
 * @design 验证 null ?? 42 运行时结果为 42。
 *         LHS 为 null（nullish 值），取 RHS。
 * @note 运行时用例：null ?? 42 = 42
 */
function main(): void {
    let result: int = null ?? 42;
    if (result != 42) {
        throw new Error("assertion failed: expected 42, got " + result);
    }
    console.log("verified");
}
