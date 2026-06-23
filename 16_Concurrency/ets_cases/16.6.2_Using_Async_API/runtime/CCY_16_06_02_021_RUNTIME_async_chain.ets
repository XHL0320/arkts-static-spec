/**
 * @id CCY_16_06_02_021_RUNTIME_async_chain
 * @expect runtime
 * @section 16.6.2
 * @design 非 async 函数链式调用 async 函数
 * @note 运行时用例：验证非 async 函数通过 Promise.then 调用 async
 */
async function stepOne(): Promise<number> {
    return 10;
}
async function stepTwo(input: number): Promise<number> {
    return input + 5;
}
function nonAsyncCaller(): void {
    stepOne().then((a: number) => {
        stepTwo(a).then((b: number) => {
            if (b != 15) {
                throw new Error("assertion failed");
            }
        });
    });
}
function main(): void {
    nonAsyncCaller();
    console.log("verified");
}
