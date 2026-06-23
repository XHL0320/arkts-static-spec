/**
 * @id EXP2_17_15_001_PASS_GETTER_COMPUTED
 * @expect compile-pass
 * @section 17.15
 * @design 顶层 getter 声明，返回计算值
 * @note 正向用例：验证顶层 getter 声明编译通过
 */
let g_base: int = 10

get computedValue(): int {
  return g_base * 2
}
