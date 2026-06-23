/**
 * @id STM_08_08_017_RUNTIME_for_expression_sequence
 * @expect runtime
 * @section 8.8
 * @design 运行时验证 forInit 和 forUpdate 中使用 expressionSequence 的正确执行行为和求值顺序
 * @note 运行时用例：for (i = 0, j = 5; i < j; i++, j--) 验证逗号表达式初始化和多变量更新
 */
function main(): void {
    let i: int = 0
    let j: int = 10
    let sum: int = 0
    for (i = 0, j = 5; i < j; i++, j--) {
        sum = sum + i
    }
    if (sum != 3) {
        throw new Error("expressionSequence for sum failed, expected 3 but got " + sum)
    }
    console.log("verified")
}
