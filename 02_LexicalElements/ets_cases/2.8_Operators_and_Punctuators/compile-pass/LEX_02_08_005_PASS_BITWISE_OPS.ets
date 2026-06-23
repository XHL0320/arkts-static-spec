/**
 * @id LEX_02_08_005_PASS_BITWISE_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 位运算符 & | ^ ~ 在整数上的使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testBitwiseOps(): void {
  let a: int = 5
  let b: int = 3
  let r1: int = a & b
  let r2: int = a | b
  let r3: int = a ^ b
  let r4: int = ~a
}
