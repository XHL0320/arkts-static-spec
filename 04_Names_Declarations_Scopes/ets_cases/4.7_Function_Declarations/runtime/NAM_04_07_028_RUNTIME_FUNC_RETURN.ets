/**
 * @id NAM_04_07_028_RUNTIME_FUNC_RETURN
 * @expect runtime
 * @section 4.7.7
 * @design 函数返回类型运行时
 * @note 运行时用例：验证函数返回类型在运行时的正确性
 */
function makeGreeting(name: string): string {
    return "Hello, " + name;
}
function main(): void {
    if (makeGreeting("ArkTS") != "Hello, ArkTS") {
        throw new Error("assertion failed: " + makeGreeting("ArkTS"));
    }
    console.log("verified");
}
