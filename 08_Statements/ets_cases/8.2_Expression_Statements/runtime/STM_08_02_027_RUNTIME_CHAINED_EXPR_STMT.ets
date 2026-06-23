/**
 * @id STM_08_02_027_RUNTIME_CHAINED_EXPR_STMT
 * @expect runtime
 * @section 8.2
 * @design 链式表达式语句执行

 * @note 运行时用例：实际执行验证链式表达式
 */
function main(): void {
  let x: int = 0
  x = 1 + 2 * 3
  if (x != 7) { throw new Error("assertion: 1+2*3=7") }
  console.log("verified")
}
