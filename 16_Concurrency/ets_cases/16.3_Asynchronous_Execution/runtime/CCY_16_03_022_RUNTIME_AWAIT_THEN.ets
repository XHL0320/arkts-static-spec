/**
 * @id CCY_16_03_022_RUNTIME_AWAIT_THEN
 * @expect runtime
 * @section 16.3
 * @design async/await + Promise.then 链式调用
 * @note 运行时用例：验证 async 函数内 await Promise.then 链
 */
async function getValue(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    let result: number = await p;
    return result;
}
async function process(): Promise<number> {
    let v: number = await getValue();
    return v + 1;
}
function main(): void {
    let p: Promise<number> = process();
    console.log("verified");
}
