/**
 * @id STM_08_02_030_RUNTIME_COMPOUND_EXPR_STMT
 * @expect runtime
 * @section 8.2
 * @design 复合赋值作为表达式语句

 * @note 运行时用例：实际执行验证复合赋值语句
 */
function main(): void {
  let x: int = 10
  x += 5
  if (x != 15) { throw new Error("assertion: 10+5=15") }
  x *= 2
  if (x != 30) { throw new Error("assertion: 15*2=30") }
  console.log("verified")
}
