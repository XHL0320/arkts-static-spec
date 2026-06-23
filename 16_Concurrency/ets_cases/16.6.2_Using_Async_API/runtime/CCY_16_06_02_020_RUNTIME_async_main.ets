/**
 * @id CCY_16_06_02_020_RUNTIME_async_main
 * @expect runtime
 * @section 16.6.2
 * @design async 函数作为入口点运行时
 * @note 运行时用例：验证 async main 含 await 的执行
 */
async function asyncMain(): Promise<void> {
    let result: number = await asyncTask();
}
async function asyncTask(): Promise<number> {
    return 42;
}
function main(): void {
    let p: Promise<void> = asyncMain();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
