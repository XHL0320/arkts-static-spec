/**
 * @id EXP_07_35_01_005_RUNTIME_LAMBDA_GENERIC
 * @expect runtime
 * @section 7.35.1
 * @design Lambda 泛型类型推断

 * @note 运行时用例：实际执行验证Lambda 泛型类型推断
 */
function foo<T>(p: (p: T) => T): T {
  return p(undefined)
}
function main(): void {
  let f: (p: Object) => Object = e => e
  let result: Object = foo<Object>(f)
  console.log("verified")
}
