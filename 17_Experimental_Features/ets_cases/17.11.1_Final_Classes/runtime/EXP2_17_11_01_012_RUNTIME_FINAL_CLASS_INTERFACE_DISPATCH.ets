/**
 * @id EXP2_17_11_01_012_RUNTIME_FINAL_CLASS_INTERFACE_DISPATCH
 * @expect runtime
 * @section 17.11.1
 * @design final 类通过接口引用进行方法调度：验证 final 类实现接口后，通过接口引用调用方法的运行时行为
 * @note 运行时用例：验证 final 类通过接口类型引用的多态调度
 */
interface Calculator {
  compute(val: int): int
}

final class FinalCalculator implements Calculator {
  multiplier: int = 2

  constructor(mult: int) {
    this.multiplier = mult
  }

  compute(val: int): int {
    return val * this.multiplier
  }
}

function main(): void {
  let calc: Calculator = new FinalCalculator(3)
  let result: int = calc.compute(7)
  if (result != 21) {
    throw new Error("assertion failed: expected 21, got " + result)
  }
  // Another instance with different multiplier
  let calc2: Calculator = new FinalCalculator(5)
  let result2: int = calc2.compute(10)
  if (result2 != 50) {
    throw new Error("assertion failed: expected 50, got " + result2)
  }
  console.log("verified")
}
