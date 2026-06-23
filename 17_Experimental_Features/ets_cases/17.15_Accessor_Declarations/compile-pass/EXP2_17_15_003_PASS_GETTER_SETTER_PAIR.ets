/**
 * @id EXP2_17_15_003_PASS_GETTER_SETTER_PAIR
 * @expect compile-pass
 * @section 17.15
 * @design 顶层 getter 和 setter 配对声明，共享 backing 变量
 * @note 正向用例：验证 getter+setter 配对编译通过
 */
let g_pairValue: int = 0

get pairValue(): int {
  return g_pairValue
}

set pairValue(v: int) {
  g_pairValue = v
}
