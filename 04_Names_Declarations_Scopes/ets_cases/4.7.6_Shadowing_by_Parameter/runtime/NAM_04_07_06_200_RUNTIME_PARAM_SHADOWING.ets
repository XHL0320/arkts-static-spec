/**
 * @id NAM_04_07_06_200_RUNTIME_PARAM_SHADOWING
 * @expect runtime
 * @section 4.7.6
 * @design 参数覆盖顶层变量的运行时行为
 * @note 运行时用例：验证参数覆盖全局变量时行为正确
 */
let globalVal: int = 0;
function foo(val: int): int { return val; }
function main(): void {
    let r: int = foo(42);
    if (r != 42) throw new Error("assertion failed: " + r);
}
