/**
 * @id EXP_07_20_038_RUNTIME_LAZY_EVALUATION
 * @expect runtime
 * @section 7.20
 * @design 验证 ?? 的短路求值（lazy evaluation）。
 *         LHS 非 nullish 时 RHS 不被求值。
 *         通过副作用计数器验证：当 LHS 为非 nullish 时，RHS 的函数调用不会发生。
 * @note 运行时用例：验证 ?? 短路求值
 */
let sideEffectCount: int = 0;

function getDefault(): string {
    sideEffectCount = sideEffectCount + 1;
    return "default";
}

function main(): void {
    // LHS 非 nullish，RHS 不应执行
    let result: string = "direct" ?? getDefault();
    if (result != "direct") {
        throw new Error("assertion failed: expected 'direct', got " + result);
    }
    if (sideEffectCount != 0) {
        throw new Error("assertion failed: side effect occurred, count=" + sideEffectCount);
    }
    console.log("verified");
}
