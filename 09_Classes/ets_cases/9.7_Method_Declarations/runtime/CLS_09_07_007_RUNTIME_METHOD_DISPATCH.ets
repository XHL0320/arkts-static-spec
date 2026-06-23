/**
 * @id CLS_09_07_007_RUNTIME_METHOD_DISPATCH
 * @expect runtime
 * @section 9.7
 * @design 方法调用运行时验证 — 实例方法通过对象引用调用
 * @note 运行时用例
 */
class Calc007 {
  add(a: int, b: int): int { return a + b }
  mul(a: int, b: int): int { return a * b }
}
function main(): void {
  let c: Calc007 = new Calc007()
  if (c.add(2, 3) != 5) { throw new Error("add fail") }
  if (c.mul(4, 5) != 20) { throw new Error("mul fail") }
  console.log("verified")
}
