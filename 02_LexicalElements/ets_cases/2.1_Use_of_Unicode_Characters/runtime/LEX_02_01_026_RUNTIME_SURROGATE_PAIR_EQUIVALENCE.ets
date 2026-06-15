/**
 * @id LEX_02_01_026_RUNTIME_SURROGATE_PAIR_EQUIVALENCE
 * @expect runtime
 * @section 2.1
 * @design 代理对表示与\u{}转义等价性验证 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let s1: string = "\uD83D\uDE00"
  let s2: string = "\u{1F600}"
  if (s1 !== s2) { throw new Error("Surrogate pair should equal \\u{} escape") }
  if (s1.length !== 2) { throw new Error("Surrogate pair length should be 2") }
}
