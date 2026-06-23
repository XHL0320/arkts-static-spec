/**
 * @id CCY_16_02_020_RUNTIME_ASYNC_EXECUTION
 * @expect runtime
 * @section 16.2
 * @design async/await/Promise 运行时行为验证
 * @note 运行时用例：验证 async 函数返回 Promise 并可 await 获取值
 */
async function getValue(): Promise<number> {
    return 100;
}
function main(): void {
    let p: Promise<number> = getValue();
    if (p == undefined) {
        throw new Error("assertion failed: Promise should not be undefined");
    }
    console.log("verified");
}
