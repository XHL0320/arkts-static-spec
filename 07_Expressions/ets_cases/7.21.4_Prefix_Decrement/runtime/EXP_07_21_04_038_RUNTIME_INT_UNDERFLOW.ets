/**
 * @id EXP_07_21_04_038_RUNTIME_INT_UNDERFLOW
 * @expect runtime
 * @section 7.21.4
 * @design 验证 int 最小值前置递减的溢出行为。
 *         --int.MIN_VALUE (-2147483648) 应回绕为 int.MAX_VALUE (2147483647)。
 *         前置返回新值（溢出后的值），与后置不同。
 * @note 运行时用例：--int.MIN 溢出为 int.MAX
 */
function main(): void {
    let x: int = -2147483648;
    let result: int = --x;
    if (result != 2147483647) {
        throw new Error("assertion failed: expected return value 2147483647, got " + result);
    }
    if (x != 2147483647) {
        throw new Error("assertion failed: expected x=2147483647, got " + x);
    }
    console.log("verified");
}
