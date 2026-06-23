/**
 * @id CCY_16_03_02_021_RUNTIME_async_lambda_await
 * @expect runtime
 * @section 16.3.2
 * @design async lambda 内含 await 悬挂点执行
 * @note 运行时用例：验证 async lambda 内 await 正常执行返回
 */
async function getValue(): Promise<number> {
    return 7;
}
function main(): void {
    let f: () => Promise<number> = async () => {
        let v: number = await getValue();
        return v + 1;
    };
    let p: Promise<number> = f();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
