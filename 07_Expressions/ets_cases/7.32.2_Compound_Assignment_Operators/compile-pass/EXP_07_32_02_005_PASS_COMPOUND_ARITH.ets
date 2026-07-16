/**
 * @id EXP_07_32_02_005_PASS_COMPOUND_ARITH
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值算术运算（+= -= *= /= %=）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCompoundArith(): void {
  let x: int = 10
  x += 5; x -= 2; x *= 3; x /= 2; x %= 4
  console.log(x.toString())
}
