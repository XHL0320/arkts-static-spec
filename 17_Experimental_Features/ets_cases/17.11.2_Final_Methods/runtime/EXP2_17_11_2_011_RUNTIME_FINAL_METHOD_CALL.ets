/**
 * @id EXP2_17_11_2_011_RUNTIME_FINAL_METHOD_CALL
 * @expect runtime
 * @section 17.11.2
 * @design 调用 final 方法验证行为：验证声明为 final 的方法可以在运行时正确调用并返回期望值
 * @note 运行时用例：实际执行验证 final 方法的行为
 */
class Counter {
  v: int
  constructor() {
    this.v = 0
  }
  final increment(): void {
    this.v = this.v + 1
  }
  final getValue(): int {
    return this.v
  }
}

function main(): void {
  let c: Counter = new Counter()
  if (c.getValue() != 0) {
    throw new Error("assertion failed: initial value should be 0")
  }
  c.increment()
  if (c.getValue() != 1) {
    throw new Error("assertion failed: after increment should be 1")
  }
  c.increment()
  c.increment()
  if (c.getValue() != 3) {
    throw new Error("assertion failed: after 3 increments should be 3")
  }
  console.log("verified")
}
