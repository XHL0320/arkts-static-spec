/**
 * @id EXP_07_21_02_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.2
 * @design 验证 bigint 后置递减返回值语义和副作用。
 *         x-- 返回自减前的值（old value），x 变为 old - 1n。
 * @note 运行时用例：bigint-- 返回旧值，变量-1
 */
function main(): void {
    let x: bigint = 2n;
    let result: bigint = x--;
    if (result != 2n) {
        throw new Error("assertion failed: expected return value 2n, got " + result);
    }
    if (x != 1n) {
        throw new Error("assertion failed: expected x=1n, got " + x);
    }
    console.log("verified");
}
