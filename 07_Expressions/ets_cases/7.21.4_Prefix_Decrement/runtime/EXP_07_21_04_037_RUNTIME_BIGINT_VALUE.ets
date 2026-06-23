/**
 * @id EXP_07_21_04_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.4
 * @design 验证 bigint 前置递减返回值语义和副作用。
 *         --x 返回自减后的新值，x 变为 old - 1n。
 * @note 运行时用例：--bigint 返回新值，变量-1
 */
function main(): void {
    let x: bigint = 2n;
    let result: bigint = --x;
    if (result != 1n) {
        throw new Error("assertion failed: expected return value 1n, got " + result);
    }
    if (x != 1n) {
        throw new Error("assertion failed: expected x=1n, got " + x);
    }
    console.log("verified");
}
