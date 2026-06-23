/**
 * @id CCY_16_04_04_023_RUNTIME_taskpool_priority
 * @expect runtime
 * @section 16.4.4
 * @design Taskpool 优先级配置执行
 * @note 运行时用例：验证 taskpool.execute 配置优先级执行
 */
function main(): void {
    let task: Task = new Task("hi", (): string => "hello");
    let p: Promise<Any> = taskpool.execute(task, Priority.HIGH);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
