/**
 * @id CON_06_04_002_PASS_ENUM_TO_NUMERIC
 * @expect compile-pass
 * @section 6.4
 * @design Enumeration to Numeric Type Conversion: 数值枚举在数值上下文中隐式转换
 * @note 正向用例：验证枚举到数值的隐式转换
 */
enum Count {
  Zero,
  One,
  Two
}

function testEnumToNumeric(): void {
  let a: int = Count.One
  let b: long = Count.Two
  let c: double = Count.Zero

  let d: int = 5 + Count.One
}
