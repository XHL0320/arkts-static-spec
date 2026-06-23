/**
 * @id EXP_07_26_035_RUNTIME_INT_SHIFT_DISTANCE_MASK
 * @expect runtime
 * @section 7.26
 * @design int 类型移位距离掩码验证：只取右操作数低 5 位（0x1f）
 * @note 运行时用例：验证 int 移位时距离被掩码为 0~31
 *       s & 0x1f：s=32 → s=0，s=33 → s=1，s=-1 → s=31
 */
function main(): void {
    // 1 << 32 = 1 << 0（32 & 0x1f = 0）
    if ((1 << 32) != (1 << 0)) {
        throw new Error("assert1 failed: 1 << 32 != 1 << 0, got " + (1 << 32));
    }
    // 1 << 33 = 1 << 1（33 & 0x1f = 1）
    if ((1 << 33) != (1 << 1)) {
        throw new Error("assert2 failed: 1 << 33 != 1 << 1, got " + (1 << 33));
    }
    // 1 << 16 = 65536（16 在 0~31 范围内，无掩码效果）
    if ((1 << 16) != 65536) {
        throw new Error("assert3 failed: 1 << 16 != 65536, got " + (1 << 16));
    }
    // 5 << 0 = 5（零移位）
    if ((5 << 0) != 5) {
        throw new Error("assert4 failed: 5 << 0 != 5");
    }
    // 用变量验证掩码
    let dist: int = 32;
    if ((1 << dist) != 1) {
        throw new Error("assert5 failed: 1 << 32 != 1 (variable), got " + (1 << dist));
    }
    // 5 << 31 = 5 << (31 & 0x1f) = -2147483648（符号位翻转）
    if ((5 << 31) != -2147483648) {
        throw new Error("assert6 failed: 5 << 31 != MIN_INT, got " + (5 << 31));
    }
    console.log("verified");
}
