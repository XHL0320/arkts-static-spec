/**
 * @id EXP_07_16_011_RUNTIME_TRUE_CASE
 * @expect runtime
 * @section 7.16
 * @design 验证 instanceof 在运行时对子类实例返回 true
 * @note 运行时用例：基本 instanceof true 场景
 */
class A {}
class B extends A {}

function main(): void {
  let a: A = new B()
  if (!(a instanceof B)) {
    throw new Error("assertion failed: a instanceof B should be true")
  }
  if (!(a instanceof A)) {
    throw new Error("assertion failed: a instanceof A should be true")
  }
  console.log("verified")
}
