/**
 * @id CCY_16_06_001_RUNTIME_api_restrictions
 * @expect runtime
 * @section 16.6
 * @design API 限制总览运行时
 * @note 运行时用例：验证 Promise then/catch 基本执行
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((resolve: (v: number) => void) => {
        resolve(42);
    });
    p.then((v: number) => {
        console.log("then");
    });
    console.log("verified");
}
