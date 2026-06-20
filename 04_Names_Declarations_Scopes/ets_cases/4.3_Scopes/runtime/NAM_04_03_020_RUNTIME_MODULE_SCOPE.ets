/**
 * @id NAM_04_03_020_RUNTIME_MODULE_SCOPE
 * @expect runtime
 * @section 4.3
 * @design 模块作用域运行时访问
 * @note 运行时用例：验证模块级变量在函数中运行时访问正确
 */
let shared: number = 100;
function getShared(): number {
    return shared;
}
function main(): void {
    if (getShared() != 100) {
        throw new Error("assertion failed: " + getShared());
    }
    console.log("verified");
}
