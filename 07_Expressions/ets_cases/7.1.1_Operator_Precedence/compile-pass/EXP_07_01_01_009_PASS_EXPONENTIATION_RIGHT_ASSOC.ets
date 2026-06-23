/**
 * @id EXP_07_01_01_009_PASS_EXPONENTIATION_RIGHT_ASSOC
 * @expect compile-pass
 * @section 7.1.1
 * @design 幂运算 `**` 右结合，`2 ** 3 ** 2` 等价 `2 ** (3 ** 2)`
 * @note 正向用例：验证幂运算右结合性
 */
function testExponentiationRightAssoc(): void {
  let a: double = 2 ** 3 ** 2
  let b: double = 4 ** 2 ** 3
  let c: double = 2 ** (3 ** 2)
}
