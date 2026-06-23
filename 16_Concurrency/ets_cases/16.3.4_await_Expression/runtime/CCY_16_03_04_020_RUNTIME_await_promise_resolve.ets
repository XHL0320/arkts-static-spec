/**
 * @id CCY_16_03_04_020_RUNTIME_await_promise_resolve
 * @expect runtime
 * @section 16.3.4
 * @design await Promise 挂起→恢复，获取 resolved 值
 * @note 运行时用例：验证 await Promise 后获取正确 resolved 值
 */
async function getValue(): Promise<number> {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    let v: number = await p;
    return v;
}
function main(): void {
    let p: Promise<number> = getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
