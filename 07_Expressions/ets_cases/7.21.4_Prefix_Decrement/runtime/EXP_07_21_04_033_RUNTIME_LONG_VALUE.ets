/**
 * @id EXP_07_21_04_033_RUNTIME_LONG_VALUE
 * @expect runtime
 * @section 7.21.4
 * @design 验证 long 前置递减返回值语义和副作用。
 *         --x 返回自减后的新值，x 变为 old - 1。
 * @note 运行时用例：--long 返回新值，变量-1
 */
function main(): void {
    let x: long = 10000000001;
    let result: long = --x;
    if (result != 10000000000) {
        throw new Error("assertion failed: expected return value 10000000000, got " + result);
    }
    if (x != 10000000000) {
        throw new Error("assertion failed: expected x=10000000000, got " + x);
    }
    console.log("verified");
}
