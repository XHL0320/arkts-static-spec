/**
 * @id EXP_07_32_02_002_PASS_COMPOUND_SHIFT
 * @expect compile-pass
 * @section 7.32.2
 * @design 复合赋值移位运算（<<= >>= >>>=）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testCompoundShift(): void {
  let x: int = 1
  x <<= 3; x >>= 1; x >>>= 1
  console.log(x.toString())
}
