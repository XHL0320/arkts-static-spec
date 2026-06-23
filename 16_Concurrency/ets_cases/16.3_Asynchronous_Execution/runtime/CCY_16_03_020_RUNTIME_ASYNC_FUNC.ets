/**
 * @id CCY_16_03_020_RUNTIME_ASYNC_FUNC
 * @expect runtime
 * @section 16.3
 * @design async 函数编译和声明（运行时仅验证编译成功）
 * @note 运行时用例：验证 async 函数编译通过和声明
 */
async function getValue(): Promise<number> {
    return 42;
}
function main(): void {
    let p: Promise<number> = getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
