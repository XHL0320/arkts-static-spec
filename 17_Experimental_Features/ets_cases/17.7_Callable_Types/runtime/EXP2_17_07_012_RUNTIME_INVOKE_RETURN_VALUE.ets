/**
 * @id EXP2_17_07_012_RUNTIME_INVOKE_RETURN_VALUE
 * @expect runtime
 * @section 17.7
 * @design 通过 C() 简写调用 $_invoke，返回值正确
 * @note 运行时用例：验证 $_invoke 调用返回正确的 int 值
 */
class CalcCallable {
  static $_invoke(): int {
    return 100
  }
}

function main(): void {
  let r: int = CalcCallable()
  if (r != 100) {
    throw new Error("assertion failed: expected 100, got " + r)
  }
  console.log("PASS: invoke returned correct value")
}
