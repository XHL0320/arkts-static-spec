/**
 * @id EXP_07_26_038_RUNTIME_BIGINT_SHIFT
 * @expect runtime
 * @section 7.26
 * @design bigint 类型移位运算（<<, >>）的运行时值验证
 * @note 运行时用例：验证 bigint << bigint 和 bigint >> bigint 的正确值
 *       bigint 移位无距离掩码限制
 */
function main(): void {
    // 5n << 2n = 20n
    if ((5n << 2n) != 20n) {
        throw new Error("assert1 failed: 5n << 2n != 20n, got " + (5n << 2n));
    }
    // -3n << 2n = -12n
    if ((-3n << 2n) != -12n) {
        throw new Error("assert2 failed: -3n << 2n != -12n, got " + (-3n << 2n));
    }
    // 20n >> 2n = 5n（正数右移）
    if ((20n >> 2n) != 5n) {
        throw new Error("assert3 failed: 20n >> 2n != 5n, got " + (20n >> 2n));
    }
    // -20n >> 2n = -5n（负数右移，向下取整）
    if ((-20n >> 2n) != -5n) {
        throw new Error("assert4 failed: -20n >> 2n != -5n, got " + (-20n >> 2n));
    }
    // -5n >> 1n = -3n（-5/2 = -2.5，向下取整 → -3）
    if ((-5n >> 1n) != -3n) {
        throw new Error("assert5 failed: -5n >> 1n != -3n, got " + (-5n >> 1n));
    }
    // bigint 左移大数：1n << 100n = 1267650600228229401496703205376n
    let big: bigint = 1n << 100n;
    if (big != 1267650600228229401496703205376n) {
        throw new Error("assert6 failed: 1n << 100n != 2^100, got " + big);
    }
    console.log("verified");
}
