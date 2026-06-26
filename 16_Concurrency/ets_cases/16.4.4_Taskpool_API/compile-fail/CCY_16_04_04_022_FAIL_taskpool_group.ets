/**
 * @id CCY_16_04_04_022_FAIL_taskpool_group
 * @expect compile-fail
 * @section 16.4.4
 * @design Taskpool taskpool.TaskGroup 分组执行
 * @note 运行时用例：验证 taskpool.TaskGroup 添加任务并执行
 */
function main(): void {
    let t1: taskpool.Task = new taskpool.Task("t1", (): number => 1);
    let t2: taskpool.Task = new taskpool.Task("t2", (): number => 2);
    let group: taskpool.TaskGroup = new taskpool.TaskGroup("calc");
    group.addTask(t1);
    group.addTask(t2);
    let p: Promise<Array<Any>> = taskpool.execute(group);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
