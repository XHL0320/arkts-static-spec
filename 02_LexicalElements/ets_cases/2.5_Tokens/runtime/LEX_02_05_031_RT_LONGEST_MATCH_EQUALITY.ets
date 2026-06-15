/**
 * @id LEX_02_05_031_RT_LONGEST_MATCH_EQUALITY
 * @expect runtime
 * @section 2.5
 * @design 最长匹配: === 与 == 的运行时语义差异
 * @note 运行时用例：验证 === 比 == 更严格
 */
function main(): void {
  let a: int = 5
  let b: int = 5
  if (!(a === b)) { throw new Error("a === b should be true") }
  if (!(a == b)) { throw new Error("a == b should be true") }
}
