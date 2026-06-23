/**
 * @id CCY_16_04_02_022_RUNTIME_launch_error_reject
 * @expect runtime
 * @section 16.4.2
 * @design launch lambda 抛出异常 → Promise rejected
 * @note 运行时用例：验证 launch lambda 内 throw 导致 Promise reject
 */
function main(): void {
    let p: Promise<number> = launch<number>((): number => {
        throw new Error("fail");
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
