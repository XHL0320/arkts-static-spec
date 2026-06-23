/**
 * @id EXP_07_28_005_RUNTIME_OBJECT_EQUALITY
 * @expect runtime
 * @section 7.28
 * @design 对象引用相等运行时验证

 * @note 运行时用例：实际执行验证对象引用相等
 */
interface I {}
class A implements I {}
function main(): void {
  let a: A = new A(); let b: A = a; let c: A = new A()
  if (a != b) { throw new Error("assertion failed: same reference should be ==")
  }
  if (a == c) { throw new Error("assertion failed: different objects should not be ==")
  }
  console.log("verified")
}
