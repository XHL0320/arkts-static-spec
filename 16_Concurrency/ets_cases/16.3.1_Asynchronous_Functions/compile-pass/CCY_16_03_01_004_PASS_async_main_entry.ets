/**
 * @id CCY_16_03_01_004_PASS_async_main_entry
 * @expect compile-pass
 * @section 16.3.1
 * @design async 入口函数
 * @note 正向用例：验证 async main 作为程序入口通过编译
 */
async function main(): Promise<void> {
    console.log("async main");
}
