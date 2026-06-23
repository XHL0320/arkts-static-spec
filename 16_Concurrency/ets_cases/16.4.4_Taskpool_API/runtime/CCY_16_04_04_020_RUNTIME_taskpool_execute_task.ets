/**
 * @id CCY_16_04_04_020_RUNTIME_taskpool_execute_task
 * @expect runtime
 * @section 16.4.4
 * @design Taskpool 创建 Task 并执行
 * @note 运行时用例：验证 taskpool.execute 执行 Task 并获取结果
 */
function main(): void {
    let task: Task = new Task("add", (a: number, b: number): number => {
        return a + b;
    }, 1, 2);
    let p: Promise<Any> = taskpool.execute(task);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
