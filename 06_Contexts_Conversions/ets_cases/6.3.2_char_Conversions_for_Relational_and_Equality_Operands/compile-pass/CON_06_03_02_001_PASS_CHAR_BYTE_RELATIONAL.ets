/**
 * @id CON_06_03_02_001_PASS_CHAR_BYTE_RELATIONAL
 * @expect compile-pass
 * @section 6.3.2
 * @design char < byte: char 和 byte 均 widening 为 int 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharByteRelational(): void {
  let c: char = c'A'
  let b: byte = 66
  let r1: boolean = c < b
  let r2: boolean = c > b
  let r3: boolean = c <= b
  let r4: boolean = c >= b
}
