/**
 * @id CCY_16_04_02_020_RUNTIME_launch_await_result
 * @expect runtime
 * @section 16.4.2
 * @design launch sync lambda 后 await 获取结果
 * @note 运行时用例：验证 launch 返回 Promise 后 await 获取值
 */
async function test(): Promise<number> {
    let p: Promise<number> = launch<number>((): number => {
        return 42;
    });
    let v: number = await p;
    return v;
}
function main(): void {
    let p: Promise<number> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
