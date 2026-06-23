/**
 * @id EXP_07_21_06_032_RUNTIME_INT_MIN_NEGATE
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -int.MIN_VALUE 溢出包装行为。
 *         spec: -int.MIN_VALUE = int.MIN_VALUE（求反溢出，不抛错）。
 * @note 运行时用例：-int.MIN 静默溢出 = int.MIN
 */
function main(): void {
    let x: int = -2147483648;
    let r: int = -x;
    if (r != -2147483648) {
        throw new Error("assertion failed: expected -int.MIN = int.MIN, got " + r);
    }
    console.log("verified");
}
