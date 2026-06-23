/**
 * @id GEN_05_02_03_200_RUNTIME_IMPLICIT_INST
 * @expect runtime
 * @section 5.3
 * @design 隐式实例化运行时
 * @note 运行时用例：验证隐式实例化运行时正确
 */
function wrap<T>(arg: T): T {
    return arg;
}
function main(): void {
    let r = wrap(42);
    if (r != 42) {
        throw new Error("assertion failed: " + r);
    }
    console.log("verified");
}
