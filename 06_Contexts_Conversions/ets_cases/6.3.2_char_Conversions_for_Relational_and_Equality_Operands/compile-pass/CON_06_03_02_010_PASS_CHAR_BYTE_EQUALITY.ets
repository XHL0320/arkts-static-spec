/**
 * @id CON_06_03_02_010_PASS_CHAR_BYTE_EQUALITY
 * @expect compile-pass
 * @section 6.3.2
 * @design char == byte / char != byte: char 和 byte 均 widening 为 int 后判等
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharByteEquality(): void {
  let c: char = c'0'
  let b: byte = 48
  let r1: boolean = c == b
  let r2: boolean = c != b
}
