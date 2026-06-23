/**
 * @id EXP_07_26_039_RUNTIME_SHIFT_NEGATIVE_DISTANCE
 * @expect runtime
 * @section 7.26
 * @design 负移位距离在掩码后变为正数距离的验证
 * @note 运行时用例：验证负移位距离被掩码取低 5/6 位后变为 [0, 31]/[0, 63]
 *       int：s & 0x1f（s=-1 -> 31, s=-2 -> 30）
 *       long：s & 0x3f（s=-1 -> 63, s=-2 -> 62）
 *       ArkTS 不支持 L 后缀，使用 long 变量实现
 */
function main(): void {
    // int: -1 & 0x1f = 31，所以 1 << -1 = 1 << 31 = MIN_INT
    if ((1 << -1) != (1 << 31)) {
        throw new Error("assert1 failed: 1 << -1 != 1 << 31, got " + (1 << -1));
    }
    // int: -2 & 0x1f = 30，所以 1 << -2 = 1 << 30 = 1073741824
    if ((1 << -2) != 1073741824) {
        throw new Error("assert2 failed: 1 << -2 != 1<<30, got " + (1 << -2));
    }
    // int: 10 >> -1 = 10 >> 31 = 0（正数右移 31 位）
    if ((10 >> -1) != 0) {
        throw new Error("assert3 failed: 10 >> -1 != 0, got " + (10 >> -1));
    }
    // long: 1 << -1 = 1 << 63
    let a1: long = 1;
    let minLong: long = a1 << 63;
    if ((a1 << -1) != minLong) {
        throw new Error("assert4 failed: 1L << -1 != MIN_LONG, got " + (a1 << -1));
    }
    // long: 1 << -2 = 1 << 62
    let v62: long = a1 << 62;
    if ((a1 << -2) != v62) {
        throw new Error("assert5 failed: 1L << -2 != 1L<<62, got " + (a1 << -2));
    }
    console.log("verified");
}
