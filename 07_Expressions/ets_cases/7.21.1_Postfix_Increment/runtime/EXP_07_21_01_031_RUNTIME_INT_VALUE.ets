/**
 * @id EXP_07_21_01_031_RUNTIME_INT_VALUE
 * @expect runtime
 * @section 7.21.1
 * @design 验证 int 后置递增返回值语义和副作用。
 *         x++ 返回自增前的值（old value），x 变为 old + 1。
 * @note 运行时用例：int++ 返回旧值，变量+1
 */
function main(): void {
    let x: int = 5;
    let result: int = x++;
    if (result != 5) {
        throw new Error("assertion failed: expected return value 5, got " + result);
    }
    if (x != 6) {
        throw new Error("assertion failed: expected x=6, got " + x);
    }
    console.log("verified");
}
