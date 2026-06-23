/**
 * @id CCY_16_03_001_PASS_ASYNC_FUNC
 * @expect compile-pass
 * @section 16.3
 * @design async 函数声明
 * @note 正向用例：验证 async 函数声明和返回 Promise 通过编译
 */
async function fetchData(): Promise<number> {
    return 42;
}
