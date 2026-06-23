/**
 * @id EXP_07_01_01_002_PASS_MULTIPLICATIVE_BEFORE_ADDITIVE
 * @expect compile-pass
 * @section 7.1.1
 * @design 乘法 `*` `/` `%` 优先级高于加法 `+` `-`，左结合
 * @note 正向用例：验证乘法优先于加法
 */
function testMultiplicativeBeforeAdditive(): void {
  let a: int = 2 + 3 * 4
  let b: int = 10 - 6 / 3
  let c: int = 2 * 3 + 4 % 3
  let d: int = 8 / 4 + 2 * 3
}
