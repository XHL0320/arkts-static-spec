/**
 * @id CCY_16_03_01_003_PASS_async_void_return
 * @expect compile-pass
 * @section 16.3.1
 * @design async 函数返回 Promise<void>
 * @note 正向用例：验证 async 函数返回 Promise<void> 通过编译
 */
async function logMessage(): Promise<void> {
    console.log("hello");
}
