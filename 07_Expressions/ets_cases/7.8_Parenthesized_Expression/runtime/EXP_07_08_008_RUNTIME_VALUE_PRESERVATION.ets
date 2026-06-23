/**
 * @id EXP_07_08_008_RUNTIME_VALUE_PRESERVATION
 * @expect runtime
 * @section 7.8
 * @design 括号表达式值不变性验证：(expr) 的值与 expr 相同，验证括号不改变表达式的值
 * @note 运行时用例：验证括号表达式的值与未包裹表达式相同
 */
function main(): void {
    let a: int = 10
    let b: int = 20
    let withoutParen: int = a + b
    let withParen: int = (a + b)
    if (withoutParen != withParen) {
        throw new Error("assertion failed: parenthesized value differs")
    }
    console.log("verified")
}
