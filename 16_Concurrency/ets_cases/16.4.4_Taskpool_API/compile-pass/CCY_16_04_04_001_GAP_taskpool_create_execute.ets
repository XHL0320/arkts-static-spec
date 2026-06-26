/**
 * @id CCY_16_04_04_001_GAP_taskpool_create_execute
 * @expect compile-pass
 * @section 16.4.4
 * @design Taskpool taskpool.Task 创建和执行
 * @note 正向用例：验证 taskpool.Task 构造、taskpool.execute、taskpool.TaskGroup 通过编译
 */
function main(): void {
    let task: taskpool.Task = new taskpool.Task("add", (a: number, b: number): number => a + b, 1, 2);
    let p1: Promise<Any> = taskpool.execute(task);
    let p2: Promise<Any> = taskpool.execute((x: number): number => x * 2, 21);
    let group: taskpool.TaskGroup = new taskpool.TaskGroup("g");
    group.addTask(task);
    let p3: Promise<Array<Any>> = taskpool.execute(group);
}
