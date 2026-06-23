/**
 * @id EXP_07_21_04_036_RUNTIME_DOUBLE_VALUE
 * @expect runtime
 * @section 7.21.4
 * @design 验证 double 前置递减返回值语义和副作用。
 *         --x 返回自减后的新值，x 变为 old - 1。
 * @note 运行时用例：--double 返回新值，变量-1
 */
function main(): void {
    let x: double = 2.0;
    let result: double = --x;
    if (result != 1.0) {
        throw new Error("assertion failed: expected return value 1.0, got " + result);
    }
    if (x != 1.0) {
        throw new Error("assertion failed: expected x=1.0, got " + x);
    }
    console.log("verified");
}
