/**
 * @id EXP2_17_04_01_023_RUNTIME_DIM_EVALUATED_ONCE_SIDE_EFFECT
 * @expect runtime
 * @section 17.4.1
 * @design 维度表达式仅求值一次：验证维度表达式（含副作用）在数组创建中被求值恰好一次
 * @note 运行时用例：使用全局计数器验证维度表达式的求值次数
 */
let dimCallCount: int = 0

function getDim(): int {
  dimCallCount = dimCallCount + 1
  return 5
}

function main(): void {
  let arr: int[] = new int[getDim()] (0)
  // Verify dimension expression was evaluated exactly once
  if (dimCallCount != 1) {
    throw new Error("assertion failed: dim expression should be evaluated exactly once, got " + dimCallCount + " times")
  }
  // Verify array was created correctly
  if (arr.length != 5) {
    throw new Error("assertion failed: array length should be 5, got " + arr.length)
  }
  console.log("verified")
}
