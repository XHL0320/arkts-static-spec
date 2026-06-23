/**
 * @id EXP_07_27_04_024_RUNTIME_EDGE
 * @expect runtime
 * @section 7.27.4
 * @design 验证函数返回值、条件表达式结果作为 boolean 关系操作数运行时行为
 * @note 运行时用例：函数返回值、三元表达式等作为 boolean 关系操作数
 */
function isPositive(x: int): boolean {
    return x > 0;
}

function isNegative(x: int): boolean {
    return x < 0;
}

function main(): void {
    // 函数返回值作为操作数
    if ((isPositive(5) < isPositive(-3)) != false) { throw new Error("assertion failed: isPositive(5) < isPositive(-3)"); }
    if ((isNegative(5) < isPositive(5)) != true) { throw new Error("assertion failed: isNegative(5) < isPositive(5) [false < true]"); }
    if ((isPositive(0) > isNegative(0)) != false) { throw new Error("assertion failed: isPositive(0) > isNegative(0)"); }
    if ((isPositive(5) <= isPositive(10)) != true) { throw new Error("assertion failed: isPositive(5) <= isPositive(10)"); }

    // 三元表达式结果作为操作数
    let a: boolean = (5 > 3) ? true : false;    // true
    let b: boolean = (3 > 5) ? true : false;    // false
    if ((b < a) != true) { throw new Error("assertion failed: ternary b < a"); }
    if ((a <= a) != true) { throw new Error("assertion failed: ternary a <= a"); }
    if ((a > b) != true) { throw new Error("assertion failed: ternary a > b"); }
    if ((b >= b) != true) { throw new Error("assertion failed: ternary b >= b"); }

    console.log("verified");
}
