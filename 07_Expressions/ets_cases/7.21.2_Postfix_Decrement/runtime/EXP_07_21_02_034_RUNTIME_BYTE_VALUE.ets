/**
 * @id EXP_07_21_02_034_RUNTIME_BYTE_VALUE
 * @expect runtime
 * @section 7.21.2
 * @design 验证 byte 后置递减返回值语义和副作用。
 *         x-- 返回自减前的值（old value），x 变为 old - 1。
 *         byte 类型 -- 结果仍为 byte（不提升为 int）。
 * @note 运行时用例：byte-- 返回旧值，变量-1
 */
function main(): void {
    let x: byte = 10;
    let result: byte = x--;
    if (result != 10) {
        throw new Error("assertion failed: expected return value 10, got " + result);
    }
    if (x != 9) {
        throw new Error("assertion failed: expected x=9, got " + x);
    }
    console.log("verified");
}
