/**
 * @id EXP_07_21_04_032_RUNTIME_SHORT_VALUE
 * @expect runtime
 * @section 7.21.4
 * @design 验证 short 前置递减返回值语义和副作用。
 *         --x 返回自减后的新值，x 变为 old - 1。
 * @note 运行时用例：--short 返回新值，变量-1
 */
function main(): void {
    let x: short = 1;
    let result: short = --x;
    if (result != 0) {
        throw new Error("assertion failed: expected return value 0, got " + result);
    }
    if (x != 0) {
        throw new Error("assertion failed: expected x=0, got " + x);
    }
    console.log("verified");
}
