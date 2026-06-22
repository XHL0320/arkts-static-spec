/**
 * @id EXP_07_33_006_RUNTIME_TERNARY_UNION_TYPE
 * @expect runtime
 * @section 7.33
 * @design 三元联合类型（未知条件）

 * @note 运行时用例：实际执行验证三元联合类型
 */
class A {}
class B extends A {}
function main(): void {
  let condition: boolean = true
  let result: A = condition ? new A() : new B()
  console.log("verified")
}
