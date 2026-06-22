/**
 * @id CON_06_03_02_011_PASS_CHAR_DOUBLE_EQUALITY
 * @expect compile-pass
 * @section 6.3.2
 * @design char == double / char != double: char widening 为 double 后判等
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharDoubleEquality(): void {
  let c: char = c'C'
  let d: double = 67.0
  let r1: boolean = c == d
  let r2: boolean = c != d
}
