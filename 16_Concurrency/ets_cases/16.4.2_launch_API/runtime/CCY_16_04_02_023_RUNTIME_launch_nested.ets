/**
 * @id CCY_16_04_02_023_RUNTIME_launch_nested
 * @expect runtime
 * @section 16.4.2
 * @design 嵌套 launch 调用
 * @note 运行时用例：验证 launch 内嵌 launch 调用
 */
function main(): void {
    let outer: Promise<void> = launch<void>((): void => {
        let inner: Promise<number> = launch<number>((): number => {
            return 99;
        });
        if (inner == undefined) {
            throw new Error("assertion failed");
        }
    });
    if (outer == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
