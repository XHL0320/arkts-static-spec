/**
 * @id STM_08_15_3_004_PASS_finally_abrupt_completion
 * @expect compile-pass
 * @section 8.15.3
 * @design 验证规则4：finally 子句执行时异常完成，导致整个 try 语句异常完成。catch 已处理原始异常，但 finally 抛出新异常。
 * @note 正向测试：try-catch-finally 结构中，catch 正常处理错误，但 finally 块中抛出新异常，try 整体为异常完成。编译层面应通过。
 */
function testFinallyAbruptCompletion(): void {
    let result: int = 0;
    try {
        throw new Error("original error");
    } catch (e) {
        result = 1;
    } finally {
        throw new Error("finally error");
    }
}
