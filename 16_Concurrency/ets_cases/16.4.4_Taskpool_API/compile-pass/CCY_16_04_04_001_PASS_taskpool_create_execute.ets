/**
 * @id CCY_16_04_04_001_PASS_taskpool_create_execute
 * @expect compile-pass
 * @section 16.4.4
 * @design Taskpool Task 创建和执行
 * @note 正向用例：验证 Task 构造、taskpool.execute、TaskGroup 通过编译
 */
function main(): void {
    let task: Task = new Task("add", (a: number, b: number): number => a + b, 1, 2);
    let p1: Promise<Any> = taskpool.execute(task);
    let p2: Promise<Any> = taskpool.execute((x: number): number => x * 2, 21);
    let group: TaskGroup = new TaskGroup("g");
    group.addTask(task);
    let p3: Promise<Array<Any>> = taskpool.execute(group);
}
