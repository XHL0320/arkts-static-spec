/**
 * @id LEX_02_05_025_PASS_TOKENS_DIRECT_CONNECT
 * @expect compile-pass
 * @section 2.5
 * @design 多个 Token 之间无需空白即可分隔（运算符/标点是天然分隔）
 * @note 正向用例：a+b*(c-d)/e%f 紧凑表达式
 */
function testTokensDirectConnect(): void {
  let a: int = 1
  let b: int = 2
  let c: int = 3
  let d: int = 4
  let e: int = 5
  let f: int = 2
  let r: int = a+b*(c-d)/e%f
}
