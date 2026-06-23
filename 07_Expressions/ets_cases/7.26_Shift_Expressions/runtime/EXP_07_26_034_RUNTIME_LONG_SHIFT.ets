/**
 * @id EXP_07_26_034_RUNTIME_LONG_SHIFT
 * @expect runtime
 * @section 7.26
 * @design long 类型三个移位运算符（<<, >>, >>>）的运行时值验证
 * @note 运行时用例：验证 long 类型移位正确值
 *       ArkTS 不支持 Java 风格的 L 后缀，使用 long 变量实现
 */
function main(): void {
    let a5: long = 5;
    let a20: long = 20;
    let a2: long = 2;
    let a1: long = 1;
    let n20: long = -20;
    let n1: long = -1;
    let a100: long = 100;
    let a25: long = 25;
    let a63: long = 63;

    // long <<
    if ((a5 << a2) != a20) {
        throw new Error("assert1 failed: 5L << 2 != 20L, got " + (a5 << a2));
    }
    // long >> 符号扩展：-20 >> 2 = -5
    if ((n20 >> a2) != -5) {
        throw new Error("assert2 failed: -20L >> 2 != -5L, got " + (n20 >> a2));
    }
    // -1 >> 63 = -1（符号扩展所有位）
    if ((n1 >> a63) != n1) {
        throw new Error("assert3 failed: -1L >> 63 != -1L, got " + (n1 >> a63));
    }
    // -1 >>> 63 = 1（零扩展，只有符号位变 1）
    if ((n1 >>> a63) != a1) {
        throw new Error("assert4 failed: -1L >>> 63 != 1L, got " + (n1 >>> a63));
    }
    // long 正数 >>> 同 >>
    if ((a100 >>> a2) != a25) {
        throw new Error("assert5 failed: 100L >>> 2 != 25L");
    }
    console.log("verified");
}
