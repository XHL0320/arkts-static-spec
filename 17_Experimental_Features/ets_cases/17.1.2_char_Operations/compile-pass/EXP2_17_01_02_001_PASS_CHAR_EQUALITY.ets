/**
 * @id EXP2_17_01_02_001_PASS_CHAR_EQUALITY
 * @expect compile-pass
 * @section 17.1.2
 * @design char 与 char 相等运算：验证 char == char 和 char != char 操作符
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharEquality(): void {
  let c1: char = c'a'
  let c2: char = c'a'
  let c3: char = c'b'
  let eq: boolean = c1 == c2
  let neq: boolean = c1 != c3
  console.log(eq)
  console.log(neq)
}
