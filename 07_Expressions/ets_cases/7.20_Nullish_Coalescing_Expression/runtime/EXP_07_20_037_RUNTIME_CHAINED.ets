/**
 * @id EXP_07_20_037_RUNTIME_CHAINED
 * @expect runtime
 * @section 7.20
 * @design 验证 undefined ?? null ?? "last" 链式 ?? 运行时结果为 "last"。
 *         左结合：先 undefined ?? null → null，再 null ?? "last" → "last"。
 * @note 运行时用例：链式 ?? = "last"
 */
function main(): void {
    let result: string = undefined ?? null ?? "last";
    if (result != "last") {
        throw new Error("assertion failed: expected 'last', got " + result);
    }
    console.log("verified");
}
