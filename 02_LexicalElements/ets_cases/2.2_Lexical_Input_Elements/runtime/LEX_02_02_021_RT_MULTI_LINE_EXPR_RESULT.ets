/**
 * @id LEX_02_02_021_RT_MULTI_LINE_EXPR_RESULT
 * @expect runtime
 * @section 2.2
 * @design 括号内换行的多行表达式计算结果正确 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let result: int = (
    10 +
    20 +
    30
  )
  if (result !== 60) { throw new Error("result !== 60") }
}
