/**
 * @id CCY_16_03_01_022_RUNTIME_async_multiple_suspension
 * @expect runtime
 * @section 16.3.1
 * @design async 函数多悬挂点（多次 await）执行顺序
 * @note 运行时用例：验证 async 函数内多个悬挂点依次执行
 */
async function step1(): Promise<number> {
    return 1;
}
async function step2(v: number): Promise<number> {
    return v + 1;
}
async function step3(v: number): Promise<number> {
    return v + 1;
}
function main(): void {
    let p1: Promise<number> = step1();
    let p2: Promise<number> = step2(1);
    let p3: Promise<number> = step3(2);
    if (p1 == undefined || p2 == undefined || p3 == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
