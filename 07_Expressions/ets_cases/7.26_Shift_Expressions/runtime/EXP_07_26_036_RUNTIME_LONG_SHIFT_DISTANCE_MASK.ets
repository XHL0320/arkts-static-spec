/**
 * @id EXP_07_26_036_RUNTIME_LONG_SHIFT_DISTANCE_MASK
 * @expect runtime
 * @section 7.26
 * @design long 类型移位距离掩码验证：只取右操作数低 6 位（0x3f）
 * @note 运行时用例：验证 long 移位时距离被掩码为 0~63
 *       s & 0x3f：s=64 → s=0，s=65 → s=1
 *       ArkTS 不支持 L 后缀，使用 long 变量实现
 */
function main(): void {
    let a1: long = 1;
    let a64: long = 64;
    let a65: long = 65;
    let a3: long = 3;
    let a63: long = 63;
    let dist: long = 64;

    // 1L << 64 = 1L << 0（64 & 0x3f = 0）
    if ((a1 << a64) != (a1 << 0)) {
        throw new Error("assert1 failed: 1L << 64 != 1L << 0, got " + (a1 << a64));
    }
    // 1L << 65 = 1L << 1（65 & 0x3f = 1）
    if ((a1 << a65) != (a1 << a1)) {
        throw new Error("assert2 failed: 1L << 65 != 1L << 1, got " + (a1 << a65));
    }
    // 3L << 63（符号位翻转）
    if ((a3 << a63) != (a1 << a63)) {
        let minLongResult: long = a3 << a63;
        throw new Error("assert3 failed: 3L << 63 != MIN_LONG, got " + minLongResult);
    }
    // 1L << 0 = 1L（零移位）
    if ((a1 << 0) != a1) {
        throw new Error("assert4 failed: 1L << 0 != 1L");
    }
    // 用变量验证掩码
    if ((a1 << dist) != a1) {
        throw new Error("assert5 failed: 1L << 64 != 1L (variable), got " + (a1 << dist));
    }
    console.log("verified");
}
