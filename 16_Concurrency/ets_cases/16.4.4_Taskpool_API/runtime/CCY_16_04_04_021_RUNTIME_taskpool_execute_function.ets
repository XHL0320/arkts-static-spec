/**
 * @id CCY_16_04_04_021_RUNTIME_taskpool_execute_function
 * @expect runtime
 * @section 16.4.4
 * @design Taskpool 直接执行函数
 * @note 运行时用例：验证 taskpool.execute 直接执行函数返回 Promise
 */
function main(): void {
    let p: Promise<Any> = taskpool.execute((x: number): number => {
        return x * 2;
    }, 21);
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
