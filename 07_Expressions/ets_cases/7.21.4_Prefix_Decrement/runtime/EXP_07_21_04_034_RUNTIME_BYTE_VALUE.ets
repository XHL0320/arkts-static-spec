/**
 * @id EXP_07_21_04_034_RUNTIME_BYTE_VALUE
 * @expect runtime
 * @section 7.21.4
 * @design 验证 byte 前置递减返回值语义和副作用。
 *         --x 返回自减后的新值，x 变为 old - 1。结果仍为 byte。
 * @note 运行时用例：--byte 返回新值，变量-1
 */
function main(): void {
    let x: byte = 10;
    let result: byte = --x;
    if (result != 9) {
        throw new Error("assertion failed: expected return value 9, got " + result);
    }
    if (x != 9) {
        throw new Error("assertion failed: expected x=9, got " + x);
    }
    console.log("verified");
}
