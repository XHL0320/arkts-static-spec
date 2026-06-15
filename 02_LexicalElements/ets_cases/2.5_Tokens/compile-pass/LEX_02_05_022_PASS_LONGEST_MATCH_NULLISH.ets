/**
 * @id LEX_02_05_022_PASS_LONGEST_MATCH_NULLISH
 * @expect compile-pass
 * @section 2.5
 * @design 最长匹配: ?? / ?. 识别为单一 Token
 * @note 正向用例：空值合并和可选链运算符
 */
class Holder022 {
  v: int = 0
}

function testLongestMatchNullish(): void {
  let h: Holder022 | null = new Holder022()
  let v1: int = h?.v ?? -1
  let n: string | null = null
  let s: string = n ?? "default"
}
