/**
 * @id EXP_07_21_03_031_RUNTIME_INT_VALUE
 * @expect runtime
 * @section 7.21.3
 * @design 验证 int 前置递增返回值语义和副作用。
 *         ++x 返回自增后的新值，x 变为 old + 1。
 *         与后置递增关键区别：返回新值（非旧值）。
 * @note 运行时用例：++int 返回新值，变量+1
 */
function main(): void {
    let x: int = 5;
    let result: int = ++x;
    if (result != 6) {
        throw new Error("assertion failed: expected return value 6, got " + result);
    }
    if (x != 6) {
        throw new Error("assertion failed: expected x=6, got " + x);
    }
    console.log("verified");
}
