/**
 * @id LEX_02_05_005_PASS_KEYWORD_DECLARATION
 * @expect compile-pass
 * @section 2.5
 * @design Keywords Token: let / const 声明关键字
 * @note 正向用例：声明关键字作为 Token
 */
function testKeywordDeclaration(): void {
  let mutableVar: int = 1
  const immutableVar: int = 2
  mutableVar = mutableVar + immutableVar
}
