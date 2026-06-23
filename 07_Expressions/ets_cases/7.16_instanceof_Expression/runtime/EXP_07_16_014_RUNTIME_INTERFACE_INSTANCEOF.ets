/**
 * @id EXP_07_16_014_RUNTIME_INTERFACE_INSTANCEOF
 * @expect runtime
 * @section 7.16
 * @design 验证接口实现类的 instanceof 运行时行为
 * @note 运行时用例：接口类型引用 instanceof 具体类场景
 */
interface I { foo(): void }
class A implements I {
  foo(): void {}
}
class B {}

function main(): void {
  let a: I = new A()
  if (!(a instanceof A)) {
    throw new Error("assertion failed: I reference to A should be instanceof A")
  }
  if (a instanceof B) {
    throw new Error("assertion failed: A instance should not be instanceof B")
  }
  console.log("verified")
}
