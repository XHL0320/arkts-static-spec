/**
 * @id EXP_07_21_03_038_RUNTIME_INT_OVERFLOW
 * @expect runtime
 * @section 7.21.3
 * @design 验证 int 最大值前置递增的溢出行为。
 *         ++int.MAX_VALUE (2147483647) 应回绕为 int.MIN_VALUE (-2147483648)。
 *         与后置递增不同：前置返回新值（溢出后的值）。
 * @note 运行时用例：++int.MAX 溢出为 int.MIN
 */
function main(): void {
    let x: int = 2147483647;
    let result: int = ++x;
    if (result != -2147483648) {
        throw new Error("assertion failed: expected return value -2147483648, got " + result);
    }
    if (x != -2147483648) {
        throw new Error("assertion failed: expected x=-2147483648, got " + x);
    }
    console.log("verified");
}
