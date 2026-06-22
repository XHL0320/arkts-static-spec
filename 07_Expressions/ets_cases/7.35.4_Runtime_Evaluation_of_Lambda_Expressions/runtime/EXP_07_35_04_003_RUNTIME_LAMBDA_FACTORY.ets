/**
 * @id EXP_07_35_04_003_RUNTIME_LAMBDA_FACTORY
 * @expect runtime
 * @section 7.35.4
 * @design Lambda 工厂每次创建独立作用域

 * @note 运行时用例：实际执行验证Lambda 工厂独立作用域
 */
function factory(): () => int {
  let v: int = 0
  return () => { v++; return v }
}
function main(): void {
  let a: () => int = factory()
  let b: () => int = factory()
  let r1: int = a(); let r2: int = a(); let r3: int = b()
  if (r1 != 1) { throw new Error("assertion: a() first call should be 1") }
  if (r2 != 2) { throw new Error("assertion: a() second call should be 2") }
  if (r3 != 1) { throw new Error("assertion: b() first call should be 1 (independent)") }
  console.log("verified")
}
