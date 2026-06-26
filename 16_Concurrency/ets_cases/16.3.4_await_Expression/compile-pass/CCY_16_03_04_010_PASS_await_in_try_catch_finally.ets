/**
 * @id CCY_16_03_04_010_PASS_await_in_try_catch_finally
 * @expect compile-pass
 * @section 16.3.4
 * @design await 在 try/catch/finally 块中
 * @note 正向用例：验证 await 在 try/catch/finally 中通过编译
 */
async function safeFinally(): Promise<number> {
    try {
        let v: number = await Promise.resolve<number>(42);
        return v;
    } catch (e) {
        return 0;
    } finally {
        console.log("done");
    }
}
