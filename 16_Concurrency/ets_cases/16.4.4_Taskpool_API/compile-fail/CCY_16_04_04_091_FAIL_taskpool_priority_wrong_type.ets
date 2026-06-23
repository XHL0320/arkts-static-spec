/**
 * @id CCY_16_04_04_091_FAIL_taskpool_priority_wrong_type
 * @expect compile-fail
 * @section 16.4.4
 * @design Taskpool.execute 优先级参数类型错误
 * @note 反向用例：验证 taskpool.execute priority 参数类型错误编译报错
 */
function main(): void {
    let task: Task = new Task("t", (): number => 1);
    taskpool.execute(task, "high");
}
