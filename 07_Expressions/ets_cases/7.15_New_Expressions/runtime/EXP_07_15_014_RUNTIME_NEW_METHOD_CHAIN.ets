/**
 * @id EXP_07_15_014_RUNTIME_NEW_METHOD_CHAIN
 * @expect runtime
 * @section 7.15
 * @design 验证 new A().method() 运行时方法调用结果正确
 * @note 运行时用例：new 后直接方法调用结果验证
 */
class A {
  getVal(): int { return 99 }
}

function main(): void {
  let v = new A().getVal()
  if (v != 99) {
    throw new Error("assertion failed: expected 99, got " + v)
  }
  console.log("verified")
}
