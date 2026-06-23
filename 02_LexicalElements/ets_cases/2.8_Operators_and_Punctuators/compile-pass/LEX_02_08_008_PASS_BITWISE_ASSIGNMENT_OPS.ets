/**
 * @id LEX_02_08_008_PASS_BITWISE_ASSIGNMENT_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 位运算复合赋值 &= |= ^= <<= >>= >>>=
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testBitwiseAssignmentOps(): void {
  let x: int = 12
  x &= 10
  x |= 5
  x ^= 3
  x <<= 1
  x >>= 1
  x >>>= 1
}
