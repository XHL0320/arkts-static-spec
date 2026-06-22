/**
 * @id CON_06_03_008_PASS_ENUM_ADDITIVE
 * @expect compile-pass
 * @section 6.3
 * @design 数值基类型枚举参与加法运算: enum + int / enum + long
 * @note 正向用例：验证枚举在数值上下文的算术运算编译通过
 */
enum Score {
  Low,
  Medium,
  High
}

function testEnumAdditive(): void {
  let r1: int = Score.Medium + 10
  let r2: int = Score.Low + Score.High
  let r3: int = 5 + Score.Medium
}
