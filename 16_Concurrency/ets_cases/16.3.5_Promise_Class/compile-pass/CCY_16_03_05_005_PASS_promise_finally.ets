/**
 * @id CCY_16_03_05_005_PASS_promise_finally
 * @expect compile-pass
 * @section 16.3.5
 * @design Promise.finally API
 * @note 正向用例：验证 Promise.finally 方法通过编译
 */
function main(): void {
    let p: Promise<number> = Promise.resolve(42);
    p.finally(() => {
        console.log("cleanup");
    });
}
