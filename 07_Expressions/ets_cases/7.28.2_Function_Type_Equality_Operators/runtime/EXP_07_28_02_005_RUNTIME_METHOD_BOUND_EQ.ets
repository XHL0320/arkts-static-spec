/**
 * @id EXP_07_28_02_005_RUNTIME_METHOD_BOUND_EQ
 * @expect runtime
 * @section 7.28.2
 * @design 不同绑定实例方法引用不等

 * @note 运行时用例：实际执行验证方法绑定实例比较
 */
class A { method(): int { return 42 } }
function main(): void {
  let a1: A = new A(); let a2: A = new A()
  if (a1.method == a2.method) {
    throw new Error("assertion failed: different bound instances should not be ==")
  }
  if (a1.method != a1.method) {
    throw new Error("assertion failed: same bound instance should be ==")
  }
  console.log("verified")
}
