/**
 * @id CON_06_03_016_FAIL_STRING_BITWISE
 * @expect compile-fail
 * @section 6.3
 * @design 字符串参与位运算: string & int, 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于位运算应编译失败
 */
function testStringBitwiseFail(): void {
  let s: string = "test"
  let n: int = 0xFF
  let r: int = s & n
}
