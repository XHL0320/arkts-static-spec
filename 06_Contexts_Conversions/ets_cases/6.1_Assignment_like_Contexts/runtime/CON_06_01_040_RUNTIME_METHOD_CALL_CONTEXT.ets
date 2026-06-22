/**
 * @id CON_06_01_040_RUNTIME_METHOD_CALL_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 方法调用上下文运行时行为：方法参数正确传递给方法体
 * @note 运行时用例：实际执行验证方法调用参数赋值语义
 */
class Multiplier {
  factor: int = 0

  constructor(f: int) {
    this.factor = f
  }

  multiply(val: int): int {
    return val * this.factor
  }

  describe(label: string, count: int): string {
    return label + count
  }
}

function main(): void {
  let m: Multiplier = new Multiplier(5)
  let result: int = m.multiply(6)
  if (result != 30) {
    throw new Error("assertion failed: multiply(6) expected 30, got " + result)
  }

  let desc: string = m.describe("count:", 10)
  if (desc != "count:10") {
    throw new Error("assertion failed: describe expected 'count:10', got " + desc)
  }

  console.log("Method call context verified")
}
