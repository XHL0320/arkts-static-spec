/**
 * @id CCY_16_06_01_020_RUNTIME_launch_details
 * @expect runtime
 * @section 16.6.1
 * @design launch API details 运行时
 * @note 运行时用例：验证 launch 在 async 函数中执行 Promise 返回
 */
async function main(): Promise<void> {
    let p: Promise<number> = launch<number>((): number => {
        return 42;
    });
    let result: number = await p;
}
function main(): void {
    let p: Promise<void> = main();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
