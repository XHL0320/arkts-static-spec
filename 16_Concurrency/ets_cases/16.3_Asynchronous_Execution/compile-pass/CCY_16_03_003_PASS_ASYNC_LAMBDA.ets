/**
 * @id CCY_16_03_003_PASS_ASYNC_LAMBDA
 * @expect compile-pass
 * @section 16.3
 * @design async lambda 表达式
 * @note 正向用例：验证 async lambda 声明通过编译
 */
let fn: () => Promise<number> = async () => { return 1; };
