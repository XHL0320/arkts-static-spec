/**
 * @id CON_06_03_02_008_PASS_CHAR_LONG_EQUALITY
 * @expect compile-pass
 * @section 6.3.2
 * @design char == long / char != long: char widening 为 long 后判等
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharLongEquality(): void {
  let c: char = c'B'
  let l: long = 66
  let r1: boolean = c == l
  let r2: boolean = c != l
}
