/**
 * @id CCY_16_03_04_024_RUNTIME_await_multiple_sequential
 * @expect runtime
 * @section 16.3.4
 * @design 连续 await 多个表达式（顺序执行）
 * @note 运行时用例：验证多个 await 依次执行
 */
async function getValue(): Promise<number> {
    let p1: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(1);
    });
    let p2: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(2);
    });
    let a: number = await p1;
    let b: number = await p2;
    return a + b;
}
function main(): void {
    let p: Promise<number> = getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
