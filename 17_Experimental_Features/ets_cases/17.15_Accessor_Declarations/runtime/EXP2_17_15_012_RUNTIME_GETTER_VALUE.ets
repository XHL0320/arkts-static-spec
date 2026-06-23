/**
 * @id EXP2_17_15_012_RUNTIME_GETTER_VALUE
 * @expect runtime
 * @section 17.15
 * @design 验证 getter 返回正确的计算值
 * @note 运行时用例：getter 应返回 backing 变量的两倍值
 */
let g_computed_base: int = 21

get computedValue(): int {
  return g_computed_base * 2
}

function main(): void {
  let result: int = computedValue
  if (result != 42) {
    throw new Error("assertion failed: expected 42, got " + result)
  }
  console.log("verified: getter returned " + result)
}
