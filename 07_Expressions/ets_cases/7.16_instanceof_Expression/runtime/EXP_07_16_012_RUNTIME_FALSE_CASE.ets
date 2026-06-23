/**
 * @id EXP_07_16_012_RUNTIME_FALSE_CASE
 * @expect runtime
 * @section 7.16
 * @design 验证 instanceof 在无继承关系类型上返回 false
 * @note 运行时用例：不相关类型 instanceof false 场景
 */
class A {}
class B {}

function main(): void {
  let a = new A()
  if (a instanceof B) {
    throw new Error("assertion failed: a instanceof B should be false")
  }
  console.log("verified")
}
