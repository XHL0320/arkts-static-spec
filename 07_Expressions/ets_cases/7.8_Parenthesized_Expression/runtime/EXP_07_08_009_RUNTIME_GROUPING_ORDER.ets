/**
 * @id EXP_07_08_009_RUNTIME_GROUPING_ORDER
 * @expect runtime
 * @section 7.8
 * @design 括号分组改变求值顺序：(1 + 2) * 3 正确得到 9，验证括号改变运算优先级
 * @note 运行时用例：验证括号分组改变求值顺序
 */
function main(): void {
    // Without parens: 1 + 2 * 3 = 1 + 6 = 7
    let without: int = 1 + 2 * 3
    // With parens: (1 + 2) * 3 = 3 * 3 = 9
    let withParen: int = (1 + 2) * 3
    if (withParen != 9) {
        throw new Error("assertion failed: (1+2)*3 != 9, got " + withParen)
    }
    if (without != 7) {
        throw new Error("assertion failed: 1+2*3 != 7, got " + without)
    }
    console.log("verified")
}
