/**
 * @id CON_06_03_011_PASS_ENUM_BITWISE
 * @expect compile-pass
 * @section 6.3
 * @design 数值基类型枚举参与位运算: enum | int / enum & int
 * @note 正向用例：验证枚举在数值上下文的位运算编译通过
 */
enum Flags {
  None = 0,
  Read = 1,
  Write = 2
}

function testEnumBitwise(): void {
  let r1: int = Flags.Read | Flags.Write
  let r2: int = Flags.Read & 1
  let r3: int = 3 | Flags.Write
}
