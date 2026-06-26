/**
 * @id CCY_16_CI_005_PASS_promise_chain_cross_module
 * @expect compile-pass
 * @section 16.6.3
 * @design Promise.then() 链式调用
 * @note 正向用例：验证 Promise.then 链式调用编译通过
 */
function main(): void {
    let p: Promise<void> = Promise.resolve<number>(42).then((): void => {
        console.log("done");
    });
}
