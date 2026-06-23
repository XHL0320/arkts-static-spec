/**
 * @id EXP_07_21_08_034_RUNTIME_COMPLEX
 * @expect runtime
 * @section 7.21.8
 * @design 验证 ! 与 &&、|| 组合的布尔逻辑
 * @note 运行时用例：! 与逻辑运算符组合
 */
function main(): void {
    // De Morgan's laws: !(a && b) == !a || !b
    if (!(true && true) != (!true || !true)) {
        throw new Error("assertion failed: De Morgan 1")
    }

    if (!(true && false) != (!true || !false)) {
        throw new Error("assertion failed: De Morgan 2")
    }

    // !(a || b) == !a && !b
    if (!(true || false) != (!true && !false)) {
        throw new Error("assertion failed: De Morgan 3")
    }

    // Chained: NOT of equality
    let a: boolean = true
    let b: boolean = false
    if (!(a == b) != (a != b)) {
        throw new Error("assertion failed: !(a==b) != (a!=b)")
    }

    console.log("verified")
}
