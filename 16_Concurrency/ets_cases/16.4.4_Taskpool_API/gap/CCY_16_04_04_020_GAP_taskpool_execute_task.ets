/**
 * @id CCY_16_04_04_020_GAP_taskpool_execute_task
 * @expect gap
 * @section 16.4.4
 * @design Taskpool 创建 taskpool.Task 并执行
 * @note GAP: taskpool.Task/taskpool.TaskGroup/taskpool 类型在当前编译器版本中未定义或线程不终止。
 *       Spec §16.4.4 Taskpool API — 标准库类型未实现。
 */
function main(): void {
    let task: taskpool.Task = new taskpool.Task("add", (a: number, b: number): number => {
        return a + b;
    }, 1, 2);
    let p: Promise<Any> = taskpool.execute(task);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
