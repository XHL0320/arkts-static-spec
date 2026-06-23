/**
 * @id EXP_07_21_05_036_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.5
 * @design 验证 +bigint 运行时返回正确的值。bigint 保持 bigint。
 * @note 运行时用例：+bigint 值正确
 */
function main(): void {
    let x: bigint = 1n;
    let r: bigint = +x;
    if (r != 1n) {
        throw new Error("assertion failed: expected +1n=1n, got " + r);
    }
    console.log("verified");
}
