/**
 * @id STM_08_15_2_009_RUNTIME_finally_executes
 * @expect runtime
 * @section 8.15.2
 * @design 运行时验证finally子句始终执行：分别在try正常完成和异常完成两种场景下检查finally块是否被执行。使用boolean标记验证finally代码路径确实运行。
 * @note 运行时测试：验证finally的执行保证
 */
function main(): void {
    // Scenario 1: try completes normally
    let flag1: boolean = false;
    try {
        flag1 = false;
    } finally {
        flag1 = true;
    }
    if (flag1 != true) {
        throw new Error("FAIL: finally did not execute after normal completion");
    }

    // Scenario 2: try completes with exception, caught by catch
    let flag2: boolean = false;
    try {
        throw new Error("test");
    } catch (e) {
        // catch block
    } finally {
        flag2 = true;
    }
    if (flag2 != true) {
        throw new Error("FAIL: finally did not execute after caught exception");
    }

    console.log("verified");
}
