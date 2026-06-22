/**
 * @id CON_06_03_01_013_FAIL_STRING_INT_RELATIONAL
 * @expect compile-fail
 * @section 6.3.1
 * @design 关系运算符: string < int, string 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于关系运算符应按语义规则编译失败
 */
function testStringIntRelationalFail(): void {
  let a: string = "hello"
  let b: int = 5
  let r: boolean = a < b
}
