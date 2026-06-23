/**
 * @id EXP_07_21_01_038_RUNTIME_INT_OVERFLOW
 * @expect runtime
 * @section 7.21.1
 * @design 验证 int 最大值后置递增的溢出行为。
 *         int.MAX_VALUE (2147483647) ++ 应回绕为 int.MIN_VALUE (-2147483648)。
 *         ？？ 返回值为溢出前的最大值，变量变为最小值。
 * @note 运行时用例：int 最大值溢出行为验证
 */
function main(): void {
    let x: int = 2147483647;
    let result: int = x++;
    if (result != 2147483647) {
        throw new Error("assertion failed: expected return value 2147483647, got " + result);
    }
    if (x != -2147483648) {
        throw new Error("assertion failed: expected x=-2147483648, got " + x);
    }
    console.log("verified");
}
