/**
 * @id EXP_07_26_040_RUNTIME_UNSIGNED_RIGHT_FORMULA
 * @expect runtime
 * @section 7.26
 * @design 验证 >>> 的公式定义对负值成立：n >>> s = (n >> s) + (2 << ~s)（int）
 *       和 n >>> s = (n >> s) + ((2 as long) << ~s)（long）
 * @note 运行时用例：验证 spec 中 >>> 公式
 *       int：对负 n 验证 (n >> s) + (2 << ~s) == n >>> s
 *       long：对负 n 验证 (n >> s) + (2L << ~s) == n >>> s
 *       ArkTS 不支持 L 后缀，使用 long 变量实现
 */
function main(): void {
    // int 验证：-1 >>> 31 = 1
    let n: int = -1;
    let s: int = 31;
    let expected: int = n >>> s;
    // 公式：(n >> s) + (2 << ~s)
    let formula: int = (n >> s) + (2 << ~s);
    if (formula != expected) {
        throw new Error("assert1 failed: int formula != >>>, " + formula + " != " + expected);
    }

    // int 验证：-5 >>> 2
    n = -5;
    s = 2;
    expected = n >>> s;
    formula = (n >> s) + (2 << ~s);
    if (formula != expected) {
        throw new Error("assert2 failed: int formula2 != >>>, " + formula + " != " + expected);
    }

    // int 验证：-2147483648 >>> 1
    n = -2147483647 - 1;
    s = 1;
    expected = n >>> s;
    formula = (n >> s) + (2 << ~s);
    if (formula != expected) {
        throw new Error("assert3 failed: int formula3 != >>>, " + formula + " != " + expected);
    }

    // long 验证：-1 >>> 63 = 1
    let ln: long = -1;
    let ls: long = 63;
    let lexpected: long = ln >>> ls;
    // 公式：(n >> s) + ((2 as long) << ~s)
    let two: long = 2;
    let lformula: long = (ln >> ls) + (two << ~ls);
    if (lformula != lexpected) {
        throw new Error("assert4 failed: long formula != >>>, " + lformula + " != " + lexpected);
    }

    // long 验证：-10 >>> 2
    ln = -10;
    ls = 2;
    lexpected = ln >>> ls;
    lformula = (ln >> ls) + (two << ~ls);
    if (lformula != lexpected) {
        throw new Error("assert5 failed: long formula2 != >>>, " + lformula + " != " + lexpected);
    }

    console.log("verified");
}
