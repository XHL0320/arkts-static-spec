/**
 * @id CON_06_03_02_005_PASS_BYTE_CHAR_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design byte < char: byte 和 char 均 widening 为 int 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testByteCharRelational(): void {
  let b: byte = 65
  let c: char = c'B'
  let r1: boolean = b < c
  let r2: boolean = b > c
}
