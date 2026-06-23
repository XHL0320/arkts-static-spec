/**
 * @id SEM_15_01_020_RUNTIME_INIT
 * @expect runtime
 * @section 15.1.3
 * @design 验证变量初始化运行时行为
 * @note 运行时用例：初始化后变量值正确
 */
function main(): void {
    let x: int = 42;
    let y = x + 1;
    if (y != 43) {
        throw new Error("assertion failed: expected 43 got " + y.toString());
    }
    console.log("verified");
}
