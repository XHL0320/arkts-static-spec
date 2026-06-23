/**
 * @id CCY_16_03_02_001_PASS_async_lambda_variable
 * @expect compile-pass
 * @section 16.3.2
 * @design async lambda 作为变量
 * @note 正向用例：验证 async lambda 表达式赋值给变量通过编译
 */
let fn: () => Promise<number> = async () => { return 42; };
