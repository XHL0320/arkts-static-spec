/**
 * @id CCY_16_04_04_090_FAIL_taskpool_execute_wrong_arg
 * @expect compile-fail
 * @section 16.4.4
 * @design Taskpool.execute 参数类型错误
 * @note 反向用例：验证 taskpool.execute 传入非 Task/Function 参数编译报错
 */
function main(): void {
    taskpool.execute(42);
}
