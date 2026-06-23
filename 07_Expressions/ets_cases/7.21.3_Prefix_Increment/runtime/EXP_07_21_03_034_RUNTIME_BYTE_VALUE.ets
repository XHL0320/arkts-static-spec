/**
 * @id EXP_07_21_03_034_RUNTIME_BYTE_VALUE
 * @expect runtime
 * @section 7.21.3
 * @design 验证 byte 前置递增返回值语义和副作用。
 *         ++x 返回自增后的新值，x 变为 old + 1。
 *         byte 类型 ++ 结果仍为 byte（不提升 int）。
 * @note 运行时用例：++byte 返回新值，变量+1
 */
function main(): void {
    let x: byte = 10;
    let result: byte = ++x;
    if (result != 11) {
        throw new Error("assertion failed: expected return value 11, got " + result);
    }
    if (x != 11) {
        throw new Error("assertion failed: expected x=11, got " + x);
    }
    console.log("verified");
}
