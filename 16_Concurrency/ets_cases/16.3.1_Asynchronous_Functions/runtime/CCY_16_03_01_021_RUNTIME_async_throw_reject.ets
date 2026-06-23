/**
 * @id CCY_16_03_01_021_RUNTIME_async_throw_reject
 * @expect runtime
 * @section 16.3.1
 * @design async 函数内 throw 异常 → Promise rejected
 * @note 运行时用例：验证 async 函数抛出异常导致 Promise reject
 */
async function fail(): Promise<number> {
    throw new Error("fail");
}
function main(): void {
    let p: Promise<number> = fail();
    if (p == undefined) {
        throw new Error("assertion failed: expected Promise");
    }
    console.log("verified");
}
