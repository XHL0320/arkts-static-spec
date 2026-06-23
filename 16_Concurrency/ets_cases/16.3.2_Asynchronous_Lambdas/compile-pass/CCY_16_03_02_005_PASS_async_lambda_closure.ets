/**
 * @id CCY_16_03_02_005_PASS_async_lambda_closure
 * @expect compile-pass
 * @section 16.3.2
 * @design async lambda 闭包捕获外部变量
 * @note 正向用例：验证 async lambda 捕获外部作用域变量通过编译
 */
function main(): void {
    let factor: number = 2;
    let f: () => Promise<number> = async () => {
        return factor * 21;
    };
    let p: Promise<number> = f();
}
