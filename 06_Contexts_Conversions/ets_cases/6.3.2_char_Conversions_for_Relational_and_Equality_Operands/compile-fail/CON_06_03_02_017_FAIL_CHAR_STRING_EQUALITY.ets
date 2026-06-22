/**
 * @id CON_06_03_02_017_FAIL_CHAR_STRING_EQUALITY
 * @expect compile-fail
 * @section 6.3.2
 * @design char <= string: string 非数值类型，char widening 不适用，应编译失败
 * @note 反向用例：非数值类型作另一操作数时 char 转换不适用
 */
function testCharStringEqualityFail(): void {
  let c: char = c'A'
  let s: string = "A"
  let r: boolean = c <= s
}
