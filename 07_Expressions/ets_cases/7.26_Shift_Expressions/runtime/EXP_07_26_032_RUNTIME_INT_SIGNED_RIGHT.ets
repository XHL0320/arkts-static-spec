/**
 * @id EXP_07_26_032_RUNTIME_INT_SIGNED_RIGHT
 * @expect runtime
 * @section 7.26
 * @design int 类型带符号右移 >> 的运行时值验证
 * @note 运行时用例：验证 int >> s 的符号扩展行为
 *       规则：n >> s = floor(n / 2^s)，符号位被复制
 */
function main(): void {
    // 20 >> 2 = 5（20 / 4）
    if ((20 >> 2) != 5) {
        throw new Error("assert1 failed: 20 >> 2 != 5, got " + (20 >> 2));
    }
    // -20 >> 2 = -5（-20 / 4 = -5，向下取整）
    if ((-20 >> 2) != -5) {
        throw new Error("assert2 failed: -20 >> 2 != -5, got " + (-20 >> 2));
    }
    // -1 >> 1 = -1（符号扩展，始终保持 -1）
    if ((-1 >> 1) != -1) {
        throw new Error("assert3 failed: -1 >> 1 != -1, got " + (-1 >> 1));
    }
    // -1 >> 31 = -1（符号扩展到所有位）
    if ((-1 >> 31) != -1) {
        throw new Error("assert4 failed: -1 >> 31 != -1, got " + (-1 >> 31));
    }
    // 正数 >> s：等价于整数除法
    if ((7 >> 2) != 1) {
        throw new Error("assert5 failed: 7 >> 2 != 1, got " + (7 >> 2));
    }
    // 100 >> 0 = 100（零移）
    if ((100 >> 0) != 100) {
        throw new Error("assert6 failed: 100 >> 0 != 100");
    }
    console.log("verified");
}
