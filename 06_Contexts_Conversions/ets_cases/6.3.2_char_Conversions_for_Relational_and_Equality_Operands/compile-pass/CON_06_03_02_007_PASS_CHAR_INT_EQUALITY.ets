/**
 * @id CON_06_03_02_007_PASS_CHAR_INT_EQUALITY
 * @expect compile-pass
 * @section 6.3.2
 * @design char == int / char != int: char widening 为 int 后判等
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharIntEquality(): void {
  let c: char = c'A'
  let i: int = 65
  let r1: boolean = c == i
  let r2: boolean = c != i
}
