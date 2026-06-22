/**
 * @id CON_06_03_01_016_FAIL_STRING_LONG_RELATIONAL
 * @expect compile-fail
 * @section 6.3.1
 * @design 关系运算符: string > long, string 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于关系运算符应按语义规则编译失败
 */
function testStringLongRelationalFail(): void {
  let a: string = "text"
  let b: long = 100
  let r: boolean = a > b
}
