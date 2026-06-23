/**
 * @id EXP2_17_07_016_RUNTIME_EXPLICIT_VS_SHORT
 * @expect runtime
 * @section 17.7
 * @design 显式调用 C.$_invoke() 与简写 C() 行为一致
 * @note 运行时用例：验证两种调用形式返回相同结果
 */
class ExplicitShortCallable {
  static $_invoke(a: int, b: int): int {
    return a * b
  }
}

function main(): void {
  let rShort: int = ExplicitShortCallable(6, 7)
  let rExplicit: int = ExplicitShortCallable.$_invoke(6, 7)

  if (rShort != 42) {
    throw new Error("assertion failed: short form expected 42, got " + rShort)
  }
  if (rExplicit != 42) {
    throw new Error("assertion failed: explicit form expected 42, got " + rExplicit)
  }
  if (rShort != rExplicit) {
    throw new Error("assertion failed: short and explicit should match")
  }

  console.log("PASS: explicit and short forms match")
}
