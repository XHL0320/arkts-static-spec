/**
 * @id EXP_07_20_031_RUNTIME_NULLISH_UNDEFINED
 * @expect runtime
 * @section 7.20
 * @design 验证 undefined ?? "default" 运行时结果为 "default"。
 *         LHS 为 undefined（nullish 值），取 RHS。
 * @note 运行时用例：undefined ?? default = "default"
 */
function main(): void {
    let result: string = undefined ?? "default";
    if (result != "default") {
        throw new Error("assertion failed: expected 'default', got " + result);
    }
    console.log("verified");
}
