/**
 * @id CON_06_03_02_016_FAIL_BOOL_CHAR_RELATIONAL
 * @expect compile-fail
 * @section 6.3.2
 * @design boolean >= char: boolean 非数值类型，char widening 不适用，应编译失败
 * @note 反向用例：非数值类型作另一操作数时 char 转换不适用
 */
function testBoolCharRelationalFail(): void {
  let b: boolean = false
  let c: char = c'Z'
  let r: boolean = b >= c
}
