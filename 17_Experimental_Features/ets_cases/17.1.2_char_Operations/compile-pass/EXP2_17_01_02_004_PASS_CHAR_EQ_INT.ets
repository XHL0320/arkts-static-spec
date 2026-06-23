/**
 * @id EXP2_17_01_02_004_PASS_CHAR_EQ_INT
 * @expect compile-pass
 * @section 17.1.2
 * @design char 与 int 相等运算：验证 char == int 和 char != int（比较为数值类型的整数）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharEqInt(): void {
  let c: char = c'A'
  let eq: boolean = c == 0x41
  let neq: boolean = c != 0x42
  console.log(eq)
  console.log(neq)
}
