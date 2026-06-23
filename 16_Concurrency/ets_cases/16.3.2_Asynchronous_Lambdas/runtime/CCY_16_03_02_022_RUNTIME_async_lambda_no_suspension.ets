/**
 * @id CCY_16_03_02_022_RUNTIME_async_lambda_no_suspension
 * @expect runtime
 * @section 16.3.2
 * @design async lambda 无悬挂点直接返回
 * @note 运行时用例：验证 async lambda 无 await 时立即返回 Promise
 */
function main(): void {
    let f: () => Promise<string> = async () => "hello";
    let p: Promise<string> = f();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
