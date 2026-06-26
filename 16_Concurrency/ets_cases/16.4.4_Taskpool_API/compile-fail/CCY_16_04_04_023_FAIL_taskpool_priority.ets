/**
 * @id CCY_16_04_04_023_FAIL_taskpool_priority
 * @expect compile-fail
 * @section 16.4.4
 * @design Taskpool 优先级配置执行
 * @note 运行时用例：验证 taskpool.execute 配置优先级执行
 */
function main(): void {
    let task: taskpool.Task = new taskpool.Task("hi", (): string => "hello");
    let p: Promise<Any> = taskpool.execute(task, taskpool.Priority.HIGH);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
