/**
 * @id STM_08_07_034_RUNTIME_WHILE_ZERO_ITER
 * @expect runtime
 * @section 8.7
 * @design while 条件初始为 false 执行零次

 * @note 运行时用例：实际执行验证while零次
 */
function main(): void {
  let count: int = 0
  while (false) { count++ }
  if (count != 0) { throw new Error("assertion: while(false) should not execute") }
  console.log("verified")
}
