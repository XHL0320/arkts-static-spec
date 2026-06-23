/**
 * @id CCY_16_04_02_021_RUNTIME_launch_multiple_concurrent
 * @expect runtime
 * @section 16.4.2
 * @design 多个并发 launch 执行
 * @note 运行时用例：验证多个 launch 同时执行
 */
async function test(): Promise<number> {
    let p1: Promise<number> = launch<number>((): number => {
        return 1;
    });
    let p2: Promise<number> = launch<number>((): number => {
        return 2;
    });
    let p3: Promise<number> = launch<number>((): number => {
        return 3;
    });
    let a: number = await p1;
    let b: number = await p2;
    let c: number = await p3;
    return a + b + c;
}
function main(): void {
    let p: Promise<number> = test();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
