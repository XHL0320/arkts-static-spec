/**
 * @id EXP_07_21_03_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.3
 * @design 验证 bigint 前置递增返回值语义和副作用。
 *         ++x 返回自增后的新值，x 变为 old + 1n。
 * @note 运行时用例：++bigint 返回新值，变量+1
 */
function main(): void {
    let x: bigint = 1n;
    let result: bigint = ++x;
    if (result != 2n) {
        throw new Error("assertion failed: expected return value 2n, got " + result);
    }
    if (x != 2n) {
        throw new Error("assertion failed: expected x=2n, got " + x);
    }
    console.log("verified");
}
