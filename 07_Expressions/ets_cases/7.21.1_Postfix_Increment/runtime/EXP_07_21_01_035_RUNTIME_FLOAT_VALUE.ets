/**
 * @id EXP_07_21_01_035_RUNTIME_FLOAT_VALUE
 * @expect runtime
 * @section 7.21.1
 * @design 验证 float 后置递增返回值语义和副作用。
 *         x++ 返回自增前的值（old value），x 变为 old + 1。
 *         float ++ 结果仍为 float。
 * @note 运行时用例：float++ 返回旧值，变量+1
 */
function main(): void {
    let x: float = 1.5 as float;
    let result: float = x++;
    if (result != 1.5) {
        throw new Error("assertion failed: expected return value 1.5, got " + result);
    }
    if (x != 2.5) {
        throw new Error("assertion failed: expected x=2.5, got " + x);
    }
    console.log("verified");
}
