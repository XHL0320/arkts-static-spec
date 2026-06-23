/**
 * @id CCY_16_01_009_PASS_main_job_implicit
 * @expect compile-pass
 * @section 16.1
 * @design 程序隐式定义 main job（入口点）
 * @note 正向用例：main 函数是隐式定义的 main job，执行从它开始
 */
function greet(): string {
    return "hello";
}

function main(): void {
    let msg: string = greet();
    console.log(msg);
}
