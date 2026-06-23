/**
 * @id CCY_16_04_04_022_RUNTIME_taskpool_group
 * @expect runtime
 * @section 16.4.4
 * @design Taskpool TaskGroup 分组执行
 * @note 运行时用例：验证 TaskGroup 添加任务并执行
 */
function main(): void {
    let t1: Task = new Task("t1", (): number => 1);
    let t2: Task = new Task("t2", (): number => 2);
    let group: TaskGroup = new TaskGroup("calc");
    group.addTask(t1);
    group.addTask(t2);
    let p: Promise<Array<Any>> = taskpool.execute(group);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
