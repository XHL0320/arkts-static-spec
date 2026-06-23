/**
 * @id EXP_07_35_01_005_RUNTIME_LAMBDA_GENERIC
 * @expect runtime
 * @section 7.35.1
 * @design Lambda 泛型类型推断
 * @note 运行时用例：实际执行验证 Lambda 泛型类型推断
 */
function foo<T>(p: (x: T) => T, val: T): T {
  return p(val)
}
function main(): void {
  let f: (x: int) => int = e => e
  let result: int = foo<int>(f, 42)
  if (result != 42) { throw new Error("assertion failed: lambda generic") }
  console.log("verified")
}
