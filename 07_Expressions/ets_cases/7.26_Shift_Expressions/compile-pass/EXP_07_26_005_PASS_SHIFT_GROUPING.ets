/**
 * @id EXP_07_26_005_PASS_SHIFT_GROUPING
 * @expect compile-pass
 * @section 7.26
 * @design 移位运算符左结合性验证：a << b >> c = (a << b) >> c
 * @note 正向用例：验证移位运算符的左结合（left-to-right）编译通过
 *       链式移位表达式正确解析
 */
function main(): void {
    let a: int = 128;
    let b: int = 2;
    let c: int = 1;

    // 左结合链式：((a << b) >> c)
    let chain1: int = a << b >> c;
    // 左结合：((a >> b) << c)
    let chain2: int = a >> b << c;
    // 三个移位混合
    let chain3: int = a << b >> c >>> 1;

    // 显式左结合（等价）
    let explicit: int = (a << b) >> c;

    console.log("chain results: " + chain1 + " " + chain2 + " " + chain3);
}
