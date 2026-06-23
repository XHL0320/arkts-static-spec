/**
 * @id EXP2_17_07_014_RUNTIME_INVOKE_OVERLOAD_RESOLUTION
 * @expect runtime
 * @section 17.7
 * @design 多个 $_invoke 重载根据参数正确分发
 * @note 运行时用例：验证不同参数调用正确分发到对应 $_invoke 重载
 */
class OverloadedInvokeRuntime {
  static $_invoke(): int {
    return 0
  }
  static $_invoke(a: int): int {
    return a * 2
  }
  static $_invoke(a: int, b: int): int {
    return a + b
  }
}

function main(): void {
  let r0: int = OverloadedInvokeRuntime()
  if (r0 != 0) {
    throw new Error("assertion failed: 0-arg expected 0, got " + r0)
  }

  let r1: int = OverloadedInvokeRuntime(5)
  if (r1 != 10) {
    throw new Error("assertion failed: 1-arg expected 10, got " + r1)
  }

  let r2: int = OverloadedInvokeRuntime(3, 7)
  if (r2 != 10) {
    throw new Error("assertion failed: 2-arg expected 10, got " + r2)
  }

  console.log("PASS: overload resolution correct")
}
