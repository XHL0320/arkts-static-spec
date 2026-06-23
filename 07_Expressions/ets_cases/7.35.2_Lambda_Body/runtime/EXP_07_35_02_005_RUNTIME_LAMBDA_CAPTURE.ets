/**
 * @id EXP_07_35_02_005_RUNTIME_LAMBDA_CAPTURE
 * @expect runtime
 * @section 7.35.2
 * @design Lambda 捕获变量为引用非拷贝

 * @note 运行时用例：实际执行验证Lambda 变量捕获引用
 */
function main(): void {
  let count: int = 0
  let increment: () => void = () => { count++ }
  increment()
  if (count != 1) { throw new Error("assertion: captured var should be 1") }
  increment()
  if (count != 2) { throw new Error("assertion: captured var should be 2") }
  console.log("verified")
}
