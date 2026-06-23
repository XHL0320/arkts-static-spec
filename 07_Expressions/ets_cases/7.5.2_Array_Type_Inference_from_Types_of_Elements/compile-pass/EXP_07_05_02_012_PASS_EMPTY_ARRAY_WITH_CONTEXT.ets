/**
 * @id EXP_07_05_02_012_PASS_EMPTY_ARRAY_WITH_CONTEXT
 * @expect compile-pass
 * @section 7.5.2
 * @design 带上下文的空数组：函数返回类型 int[] 为 [] 提供上下文
 * @note 正向用例：空数组在显式返回类型上下文下编译通过（7.5.1 上下文推断）
 */
function foo(): int[] {
  return []
}
