/**
 * @id EXP_07_21_01_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.1
 * @design 验证 bigint 后置递增返回值语义和副作用。
 *         x++ 返回自增前的值（old value），x 变为 old + 1n。
 * @note 运行时用例：bigint++ 返回旧值，变量+1
 */
function main(): void {
    let x: bigint = 1n;
    let result: bigint = x++;
    if (result != 1n) {
        throw new Error("assertion failed: expected return value 1n, got " + result);
    }
    if (x != 2n) {
        throw new Error("assertion failed: expected x=2n, got " + x);
    }
    console.log("verified");
}
