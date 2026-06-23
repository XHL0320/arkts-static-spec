/**
 * @id CCY_16_03_02_002_PASS_async_lambda_argument
 * @expect compile-pass
 * @section 16.3.2
 * @design async lambda 作为参数
 * @note 正向用例：验证 async lambda 作为函数参数通过编译
 */
function execute(fn: () => Promise<number>): void {
    fn();
}
function main(): void {
    execute(async () => { return 42; });
}
