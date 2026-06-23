/**
 * @id CCY_16_03_002_PASS_ASYNC_MAIN
 * @expect compile-pass
 * @section 16.3
 * @design async 入口函数
 * @note 正向用例：验证 async main 入口通过编译
 */
async function main(): Promise<void> {
    console.log("async main");
}
