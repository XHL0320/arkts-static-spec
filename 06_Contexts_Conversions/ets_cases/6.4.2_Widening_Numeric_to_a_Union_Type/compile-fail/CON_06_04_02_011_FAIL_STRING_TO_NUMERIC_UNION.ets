/**
 * @id CON_06_04_02_011_FAIL_STRING_TO_NUMERIC_UNION
 * @expect compile-fail
 * @section 6.4.2
 * @design string→int|double: string 非数值类型，应编译失败
 * @note 反向用例：非数值类型赋值给数值联合应编译失败
 */
function testStringToNumericUnionFail(): void {
  let s: string = "hello"
  let u: int | double = s
}
