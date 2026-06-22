/**
 * @id CON_06_03_012_PASS_ENUM_SHIFT_UNARY
 * @expect compile-pass
 * @section 6.3
 * @design 数值基类型枚举参与移位和一元运算
 * @note 正向用例：验证枚举移位和一元运算编译通过
 */
enum ShiftVal {
  V1 = 1,
  V2 = 2,
  V4 = 4
}

function testEnumShiftUnary(): void {
  let r1: int = ShiftVal.V1 << 3
  let r2: int = ShiftVal.V4 >> 1
  let r3: int = -ShiftVal.V2
  let r4: int = ~ShiftVal.V1
}
