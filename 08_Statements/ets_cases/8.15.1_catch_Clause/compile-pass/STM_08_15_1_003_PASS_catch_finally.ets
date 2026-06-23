/**
 * @id STM_08_15_1_003_PASS_catch_finally
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证 try-catch-finally 完整结构编译通过，catch 捕获错误后 finally 确保执行清理逻辑。
 * @note 正向测试：try-catch-finally 三部分完整结构，catch 捕获 Error 对象，finally 块执行清理。
 */
function testCatchFinally(): void {
    let cleanedUp: boolean = false;
    try {
        throw new Error("error with finally");
    } catch (e) {
        let msg: string = e.message;
    } finally {
        cleanedUp = true;
    }
}
