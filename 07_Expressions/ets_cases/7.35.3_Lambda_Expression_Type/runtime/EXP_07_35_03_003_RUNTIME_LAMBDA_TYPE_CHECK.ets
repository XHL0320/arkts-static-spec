/**
 * @id EXP_07_35_03_003_RUNTIME_LAMBDA_TYPE_CHECK
 * @expect runtime
 * @section 7.35.3
 * @design Lambda 类型为函数类型运行时验证

 * @note 运行时用例：实际执行验证Lambda 类型验证
 */
function main(): void {
  let f: (x: int) => int = (x: int) => x * 3
  let g: (x: int) => int = f
  if (f(10) != g(10)) { throw new Error("assertion: f and g should produce same result") }
  console.log("verified")
}
