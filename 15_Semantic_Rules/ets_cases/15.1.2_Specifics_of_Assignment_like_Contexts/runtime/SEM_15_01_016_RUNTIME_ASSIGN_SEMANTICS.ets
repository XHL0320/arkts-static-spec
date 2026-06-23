/**
 * @id SEM_15_01_016_RUNTIME_ASSIGN_SEMANTICS
 * @expect runtime
 * @section 15.1.2
 * @design 验证赋值上下文运行时行为：赋值后变量值正确
 * @note 运行时用例：验证赋值语义在运行时正确
 */
function main(): void {
    let x: int;
    x = 42;
    let y: int = x;
    if (y != 42) {
        throw new Error("assertion failed: expected 42 got " + y.toString());
    }
    console.log("verified");
}
