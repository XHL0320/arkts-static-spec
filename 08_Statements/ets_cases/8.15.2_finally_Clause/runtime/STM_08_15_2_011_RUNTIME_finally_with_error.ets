/**
 * @id STM_08_15_2_011_RUNTIME_finally_with_error
 * @expect runtime
 * @section 8.15.2
 * @design 运行时验证当catch块中抛出新错误时，finally子句仍在该新错误传播之前执行。使用标志变量记录finally执行，确保异常路径下finally的语义正确。
 * @note 运行时测试：验证catch抛新异常时finally仍执行
 */
function main(): void {
    // Test: catch throws a new error, finally still executes before propagation
    let finallyExecuted: boolean = false;
    let caughtOuter: boolean = false;
    try {
        try {
            throw new Error("inner error");
        } catch (e) {
            // re-throw a new error
            throw new Error("new error from catch");
        } finally {
            finallyExecuted = true;
        }
    } catch (e) {
        caughtOuter = true;
    }

    if (finallyExecuted != true) {
        throw new Error("FAIL: finally did not execute when catch threw new error");
    }
    if (caughtOuter != true) {
        throw new Error("FAIL: outer catch did not catch the re-thrown error");
    }

    console.log("verified");
}
