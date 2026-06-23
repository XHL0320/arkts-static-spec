/**
 * @id CCY_16_03_008_PASS_ASYNC_INFERRED
 * @expect compile-pass
 * @section 16.3
 * @design async 函数返回类型推断
 * @note 正向用例：验证 async 函数返回类型可推断为 Promise<T>
 */
async function getValue() {
    return 42;
}
