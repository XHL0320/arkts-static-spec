/**
 * @id CCY_16_CI_023_RUNTIME_promise_chain
 * @expect runtime
 * @section 16.6.3
 * @design Promise 链式调用运行时
 * @note 运行时用例：验证 Promise.then 链式调用
 */
function main(): void {
    let p: Promise<void> = Promise.resolve<number>(42).then((): void => {
        console.log("chain");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
