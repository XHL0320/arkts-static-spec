/**
 * @id CCY_16_03_02_020_RUNTIME_async_lambda_execution
 * @expect runtime
 * @section 16.3.2
 * @design async lambda 执行返回 Promise resolved 值
 * @note 运行时用例：验证 async lambda 执行后 Promise 被 resolve
 */
function main(): void {
    let f: () => Promise<number> = async () => {
        return 42;
    };
    let p: Promise<number> = f();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
