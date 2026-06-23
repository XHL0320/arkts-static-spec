/**
 * @id EXP_07_26_031_RUNTIME_INT_SHIFT_LEFT
 * @expect runtime
 * @section 7.26
 * @design int 类型左移 << 的运行时值验证
 * @note 运行时用例：验证 int << s 的正确值
 *       规则：n << s = n * 2^s（即使溢出也按乘法等效）
 */
function main(): void {
    // 5 << 2 = 20（5 * 4）
    if ((5 << 2) != 20) {
        throw new Error("assert1 failed: 5 << 2 != 20, got " + (5 << 2));
    }
    // 0 << 5 = 0
    if ((0 << 5) != 0) {
        throw new Error("assert2 failed: 0 << 5 != 0");
    }
    // -3 << 2 = -12（-3 * 4）
    if ((-3 << 2) != -12) {
        throw new Error("assert3 failed: -3 << 2 != -12, got " + (-3 << 2));
    }
    // 1 << 0 = 1（零移位）
    if ((1 << 0) != 1) {
        throw new Error("assert4 failed: 1 << 0 != 1");
    }
    // 变量移位
    let a: int = 10;
    let b: int = 3;
    if ((a << b) != 80) {
        throw new Error("assert5 failed: 10 << 3 != 80, got " + (a << b));
    }
    console.log("verified");
}
