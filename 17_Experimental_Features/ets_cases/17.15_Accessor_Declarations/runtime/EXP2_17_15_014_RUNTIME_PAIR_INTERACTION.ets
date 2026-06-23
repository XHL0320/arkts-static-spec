/**
 * @id EXP2_17_15_014_RUNTIME_PAIR_INTERACTION
 * @expect runtime
 * @section 17.15
 * @design 验证 getter+setter 配对交互：setter 更新后 getter 返回新值
 * @note 运行时用例：多次 setter 赋值后 getter 返回最新值
 */
let g_pairValue: int = 0

get pairValue(): int {
  return g_pairValue
}

set pairValue(v: int) {
  g_pairValue = v
}

function main(): void {
  pairValue = 10
  if (pairValue != 10) {
    throw new Error("assertion failed: expected 10, got " + pairValue)
  }
  pairValue = 20
  if (pairValue != 20) {
    throw new Error("assertion failed: expected 20, got " + pairValue)
  }
  pairValue = pairValue + 5
  if (pairValue != 25) {
    throw new Error("assertion failed: expected 25, got " + pairValue)
  }
  console.log("verified: getter+setter interaction correct, final value=" + pairValue)
}
