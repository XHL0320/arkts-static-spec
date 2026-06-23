/**
 * @id STM_08_08_013_PASS_for_update_expression_sequence
 * @expect compile-pass
 * @section 8.8
 * @design forUpdate 使用 expressionSequence（逗号表达式）更新多个变量 — STATEMENTS.md: forUpdate 是 expressionSequence
 * @note 正向用例：for (let i = 0; i < 5; i++, j--) 逗号表达式同时更新 i 和 j
 */
function testForUpdateExpressionSequence(): void {
    let j: int = 5
    let sum: int = 0
    for (let i: int = 0; i < 5; i++, j--) {
        sum = sum + i + j
    }
    console.log(sum)
}
