/**
 * @id GEN_05_01_036_RUNTIME_GENERIC_FUNCTION
 * @expect runtime
 * @section 5.1
 * @design 泛型函数运行时
 * @note 运行时用例：验证泛型函数调用运行时正确
 */
function identity<T>(arg: T): T {
    return arg;
}
function main(): void {
    let r = identity<number>(42);
    if (r != 42) {
        throw new Error("assertion failed: " + r);
    }
    console.log("verified");
}
