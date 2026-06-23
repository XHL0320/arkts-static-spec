/**
 * @id CCY_16_03_02_004_PASS_async_lambda_trailing
 * @expect compile-pass
 * @section 16.3.2
 * @design async lambda trailing lambda 语法
 * @note 正向用例：验证 async lambda 作为尾随 lambda 通过编译
 */
function invoke(f: () => Promise<number>): void {
    let p: Promise<number> = f();
}
function main(): void {
    invoke(async () => {
        return 42;
    });
}
