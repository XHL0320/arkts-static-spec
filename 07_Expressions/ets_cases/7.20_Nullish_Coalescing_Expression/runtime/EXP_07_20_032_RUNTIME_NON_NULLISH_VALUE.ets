/**
 * @id EXP_07_20_032_RUNTIME_NON_NULLISH_VALUE
 * @expect runtime
 * @section 7.20
 * @design 验证非 nullish 变量 ?? default 运行时结果为 LHS 值。
 *         LHS 为非 nullish 值，取 LHS，RHS 不执行。
 * @note 运行时用例：非 nullish 变量 LHS = "hello"
 */
function main(): void {
    let v: string = "hello";
    let result: string = v ?? "world";
    if (result != "hello") {
        throw new Error("assertion failed: expected 'hello', got " + result);
    }
    console.log("verified");
}
