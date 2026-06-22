/**
 * @id CON_06_04_014_FAIL_NUMERIC_ENUM_IN_STRING
 * @expect compile-fail
 * @section 6.4
 * @design 数值枚举直接赋给 string（非 string context），无隐式转换，应编译失败
 * @note 反向用例：数值枚举→string 无隐式转换（非 string operator context）
 */
enum Code {
  A,
  B
}

function testNumericEnumInStringFail(): void {
  let s: string = Code.A
}
