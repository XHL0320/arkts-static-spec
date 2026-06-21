/**
 * @id NAM_04_06_04_001_RUNTIME_ASSIGNABLE_INIT
 * @expect runtime
 * @section 4.6.4
 * @design 初始化可赋值场景的运行时验证
 * @note 运行时用例：验证赋值初始化在运行时值正确
 */
function main(): void {
    let x: number = 42;
    if (x != 42) throw new Error("assertion failed: " + x);
}
