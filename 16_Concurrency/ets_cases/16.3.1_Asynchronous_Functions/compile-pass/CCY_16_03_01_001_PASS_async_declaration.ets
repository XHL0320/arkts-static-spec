/**
 * @id CCY_16_03_01_001_PASS_async_declaration
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数声明返回 Promise<T>
 * @note 正向用例：验证 async 函数声明和返回值类型 Promise<T> 通过编译
 */
async function fetchData(): Promise<number> {
    return 42;
}
