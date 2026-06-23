/**
 * @id CCY_16_03_01_005_PASS_async_inferred_return
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数返回类型推断
 * @note 正向用例：验证 async 函数返回类型可推断为 Promise<T> 通过编译
 */
async function getValue() {
    return 42;
}
