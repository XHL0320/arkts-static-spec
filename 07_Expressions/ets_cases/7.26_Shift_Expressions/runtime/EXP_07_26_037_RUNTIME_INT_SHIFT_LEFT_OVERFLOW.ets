/**
 * @id EXP_07_26_037_RUNTIME_INT_SHIFT_LEFT_OVERFLOW
 * @expect runtime
 * @section 7.26
 * @design int 左移溢出行为验证：等价于乘以 2^s，即使溢出也按乘法等效
 * @note 运行时用例：验证 int << s 溢出时的二进制补码截断行为
 *       规则：n << s 等价于 n * 2^s，即使溢出也按二进制补码截断
 */
function main(): void {
    // 1 << 31 = -2147483648（MIN_INT：符号位被置 1）
    if ((1 << 31) != -2147483648) {
        throw new Error("assert1 failed: 1 << 31 != MIN_INT, got " + (1 << 31));
    }
    // -1 << 31 = -2147483648（-1 * 2^31 截断）
    if ((-1 << 31) != -2147483648) {
        throw new Error("assert2 failed: -1 << 31 != MIN_INT, got " + (-1 << 31));
    }
    // 0x7fffffff << 1 = -2（MAX_INT 左移 1 位溢出）
    let max: int = 2147483647;
    if ((max << 1) != -2) {
        throw new Error("assert3 failed: MAX_INT << 1 != -2, got " + (max << 1));
    }
    // 3 << 30 = -1073741824（3 * 2^30 溢出到负）
    if ((3 << 30) != -1073741824) {
        throw new Error("assert4 failed: 3 << 30 != -1073741824, got " + (3 << 30));
    }
    // 无溢出：5 << 27 = 671088640（在 int 范围内）
    if ((5 << 27) != 671088640) {
        throw new Error("assert5 failed: 5 << 27 != 671088640, got " + (5 << 27));
    }
    console.log("verified");
}
