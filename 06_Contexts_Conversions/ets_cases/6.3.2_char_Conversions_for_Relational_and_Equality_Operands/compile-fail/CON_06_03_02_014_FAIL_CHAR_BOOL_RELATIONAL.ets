/**
 * @id CON_06_03_02_014_FAIL_CHAR_BOOL_RELATIONAL
 * @expect compile-fail
 * @section 6.3.2
 * @design char < boolean: boolean 非数值类型，char widening 不适用，应编译失败
 * @note 反向用例：非数值类型作另一操作数时 char 转换不适用
 */
function testCharBoolRelationalFail(): void {
  let c: char = c'X'
  let b: boolean = true
  let r: boolean = c < b
}
