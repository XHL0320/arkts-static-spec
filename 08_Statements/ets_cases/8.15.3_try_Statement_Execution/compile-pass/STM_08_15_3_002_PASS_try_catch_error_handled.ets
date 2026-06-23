/**
 * @id STM_08_15_3_002_PASS_try_catch_error_handled
 * @expect compile-pass
 * @section 8.15.3
 * @design 验证规则2：try 块抛出异常 x，catch 子句被执行，catch 体正常完成，整个 try 语句正常完成。
 * @note 正向测试：try 中抛出 Error，catch 捕获后正常处理，catch 体无异常抛出，整个 try 表现为正常完成。
 */
function testTryCatchErrorHandled(): void {
    let result: int = 0;
    try {
        throw new Error("test error");
        result = 1;
    } catch (e) {
        result = 2;
    }
}
