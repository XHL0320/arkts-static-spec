/**
 * @id CON_06_04_04_002_PASS_STRING_ENUM_TO_UNION
 * @expect compile-pass
 * @section 6.4.4
 * @design string 基类型枚举→string|number 联合类型
 * @note 正向用例：与 spec 示例一致
 */
enum StringEnum { a = "a", b = "b", c = "c" }

function testStringEnumToUnion(): void {
  let e: StringEnum = StringEnum.a
  let u: string | number = e
}
