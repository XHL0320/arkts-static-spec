/**
 * @id LEX_02_05_026_PASS_TOKEN_STREAM_MIXED
 * @expect compile-pass
 * @section 2.5
 * @design 4 类 Token 在同一表达式中混合使用
 * @note 正向用例：Identifier + Keyword + Operator + Literal 混合
 */
class Item026 {
  value: int = 10
}

function testTokenStreamMixed(): void {
  let item: Item026 = new Item026()
  if (item.value === 10 && true) {
    item.value = item.value + 5
  }
}
