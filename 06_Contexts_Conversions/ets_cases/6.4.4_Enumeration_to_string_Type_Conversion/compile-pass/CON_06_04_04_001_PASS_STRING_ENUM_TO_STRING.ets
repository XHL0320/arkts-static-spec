/**
 * @id CON_06_04_04_001_PASS_STRING_ENUM_TO_STRING
 * @expect compile-pass
 * @section 6.4.4
 * @design string 基类型枚举→string: StringEnum→string
 * @note 正向用例：与 spec 示例一致
 */
enum StringEnum { a = "a", b = "b", c = "c" }

function testStringEnumToString(): void {
  let e: StringEnum = StringEnum.a
  let s: string = e
}
