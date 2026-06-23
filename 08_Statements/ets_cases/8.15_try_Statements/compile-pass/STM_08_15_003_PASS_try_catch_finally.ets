/**
 * @id STM_08_15_003_PASS_try_catch_finally
 * @expect compile-pass
 * @section 8.15
 * @design 验证完整的 try-catch-finally 结构编译通过
 * @note try 块后同时包含 catch 子句和 finally 子句，符合语法要求
 */
function testTryCatchFinally(): void {
    let x: int = 0;
    try {
        x = 100;
    } catch (e) {
        x = -1;
    } finally {
        x = 50;
    }
}
