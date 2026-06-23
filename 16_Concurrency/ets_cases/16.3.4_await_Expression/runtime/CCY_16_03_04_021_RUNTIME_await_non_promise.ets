/**
 * @id CCY_16_03_04_021_RUNTIME_await_non_promise
 * @expect runtime
 * @section 16.3.4
 * @design await 非 Promise 值立即返回（无悬挂）
 * @note 运行时用例：验证 await 非 Promise 类型不挂起，直接返回值
 */
async function getValue(): Promise<number> {
    let v: number = await 42;
    return v;
}
function main(): void {
    let p: Promise<number> = getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
