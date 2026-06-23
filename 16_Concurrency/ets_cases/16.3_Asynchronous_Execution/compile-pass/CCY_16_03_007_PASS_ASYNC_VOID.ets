/**
 * @id CCY_16_03_007_PASS_ASYNC_VOID
 * @expect compile-pass
 * @section 16.3
 * @design async 函数返回 Promise<void>
 * @note 正向用例：验证 async 函数返回 Promise<void> 通过编译
 */
async function log(): Promise<void> {
    console.log("hello");
}
