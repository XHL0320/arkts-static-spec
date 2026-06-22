/**
 * @id CON_06_03_02_015_FAIL_STRING_CHAR_RELATIONAL
 * @expect compile-fail
 * @section 6.3.2
 * @design string > char: string 非数值类型，char widening 不适用，应编译失败
 * @note 反向用例：非数值类型作另一操作数时 char 转换不适用
 */
function testStringCharRelationalFail(): void {
  let s: string = "test"
  let c: char = c'Y'
  let r: boolean = s > c
}
