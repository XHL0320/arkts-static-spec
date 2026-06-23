/**
 * @id CCY_16_01_022_RUNTIME_main_job_termination
 * @expect runtime
 * @section 16.1
 * @design main job 完成后启动程序终止序列
 * @note 运行时用例：main 函数执行完毕触发程序正常终止
 */
function main(): void {
    let x: number = 1 + 2;
    console.log(x.toString());
}
