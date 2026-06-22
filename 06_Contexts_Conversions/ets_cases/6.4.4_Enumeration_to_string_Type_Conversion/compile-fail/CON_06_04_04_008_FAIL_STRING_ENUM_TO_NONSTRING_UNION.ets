/**
 * @id CON_06_04_04_008_FAIL_STRING_ENUM_TO_NONSTRING_UNION
 * @expect compile-fail
 * @section 6.4.4
 * @design string 枚举→int|double 联合: 联合中无 string，应编译失败
 * @note 反向用例：联合必须包含 string 才能接收 string enum
 */
enum Label { A = "a", B = "b" }

function testStringEnumToNonStringUnionFail(): void {
  let e: Label = Label.A
  let u: int | double = e
}
