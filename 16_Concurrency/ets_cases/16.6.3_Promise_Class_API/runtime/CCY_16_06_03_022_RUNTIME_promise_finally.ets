/**
 * @id CCY_16_06_03_022_RUNTIME_promise_finally
 * @expect runtime
 * @section 16.6.3
 * @design Promise.finally 回调运行时
 * @note 运行时用例：验证 Promise resolve 后 finally 回调执行
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    p.finally(() => {
        console.log("finally");
    });
    console.log("verified");
}
