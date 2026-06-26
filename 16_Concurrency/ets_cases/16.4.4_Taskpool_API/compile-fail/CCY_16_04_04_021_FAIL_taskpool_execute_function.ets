/**
 * @id CCY_16_04_04_021_FAIL_taskpool_execute_function
 * @expect compile-fail
 * @section 16.4.4
 * @design Taskpool 直接执行函数
 * @note GAP: 编译通过但 taskpool.execute 创建真实线程不终止，运行时 hang。
 *       Spec §16.4.4 — taskpool 标准库线程模型未完整实现。
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
