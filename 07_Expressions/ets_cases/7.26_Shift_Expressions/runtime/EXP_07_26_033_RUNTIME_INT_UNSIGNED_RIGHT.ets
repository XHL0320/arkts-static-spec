/**
 * @id EXP_07_26_033_RUNTIME_INT_UNSIGNED_RIGHT
 * @expect runtime
 * @section 7.26
 * @design int 类型无符号右移 >>> 的运行时值验证
 * @note 运行时用例：验证 int >>> s 的零扩展行为
 *       正数同 >>；负数高位补 0（变成正数）
 */
function main(): void {
    // 正数 >>> 等价于 >>
    if ((20 >>> 2) != 5) {
        throw new Error("assert1 failed: 20 >>> 2 != 5, got " + (20 >>> 2));
    }
    // -1 >>> 31 = 1（只有符号位变正）
    if ((-1 >>> 31) != 1) {
        throw new Error("assert2 failed: -1 >>> 31 != 1, got " + (-1 >>> 31));
    }
    // -1 >>> 1 = 2147483647（高位补 0）
    if ((-1 >>> 1) != 2147483647) {
        throw new Error("assert3 failed: -1 >>> 1 != 2147483647, got " + (-1 >>> 1));
    }
    // 正数零扩展恒等于正数
    if ((5 >>> 0) != 5) {
        throw new Error("assert4 failed: 5 >>> 0 != 5");
    }
    // -2147483648 >>> 31 = 1（MIN_INT 无符号右移 31 位）
    let min: int = -2147483647 - 1;
    if ((min >>> 31) != 1) {
        throw new Error("assert5 failed: MIN_INT >>> 31 != 1, got " + (min >>> 31));
    }
    console.log("verified");
}
