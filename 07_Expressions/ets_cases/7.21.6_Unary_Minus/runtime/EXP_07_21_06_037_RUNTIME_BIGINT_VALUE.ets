/**
 * @id EXP_07_21_06_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -bigint 运行时值正确。
 *         spec: -bigint 等价于 0n - bigint。
 * @note 运行时用例：-bigint 求反值正确
 */
function main(): void {
    let x: bigint = 1n;
    let r: bigint = -x;
    if (r != -1n) {
        throw new Error("assertion failed: expected -1n=-1n, got " + r);
    }
    let y: bigint = -1n;
    let r2: bigint = -y;
    if (r2 != 1n) {
        throw new Error("assertion failed: expected -(-1n)=1n, got " + r2);
    }
    console.log("verified");
}
