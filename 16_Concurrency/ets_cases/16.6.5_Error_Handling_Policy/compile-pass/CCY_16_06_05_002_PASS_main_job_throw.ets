/**
 * @id CCY_16_06_05_002_PASS_main_job_throw
 * @expect compile-pass
 * @section 16.6.5
 * @design main job 抛出错误（编译通过，运行时触发程序终止）
 * @note 正向用例：验证 main 函数中抛出错误语法通过编译
 *       runtime 行为：main job 抛出错误视为未捕获，启动程序终止序列
 */
function main(): void {
    throw new Error("uncaught from main");
}
