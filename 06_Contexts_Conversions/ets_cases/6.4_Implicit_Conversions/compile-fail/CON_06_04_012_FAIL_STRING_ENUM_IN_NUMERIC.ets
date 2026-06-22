/**
 * @id CON_06_04_012_FAIL_STRING_ENUM_IN_NUMERIC
 * @expect compile-fail
 * @section 6.4
 * @design string 值枚举不应有 Enumeration to Numeric 转换，用于算术应编译失败
 * @note 反向用例：string 枚举无 numeric 隐式转换，用于数值运算应失败
 */
enum Color {
  Red = "red",
  Blue = "blue"
}

function testStringEnumInNumericFail(): void {
  let r: int = Color.Red + 1
}
