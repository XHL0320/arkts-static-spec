/**
 * @id CCY_16_06_05_020_RUNTIME_async_try_catch
 * @expect runtime
 * @section 16.6.5
 * @design async 函数内 try/catch 捕获异常
 * @note 运行时用例：验证 async 函数中 try/catch 处理 rejected promise
 */
async function risky(): Promise<string> {
    throw new Error("fail");
}
async function safeCall(): Promise<void> {
    try {
        let data: string = await risky();
    } catch (e) {
        console.log("caught");
    }
}
function main(): void {
    let p: Promise<void> = safeCall();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
