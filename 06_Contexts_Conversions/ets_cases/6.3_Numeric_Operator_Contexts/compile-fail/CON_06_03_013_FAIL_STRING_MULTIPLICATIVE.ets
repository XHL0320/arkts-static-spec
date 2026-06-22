/**
 * @id CON_06_03_013_FAIL_STRING_MULTIPLICATIVE
 * @expect compile-fail
 * @section 6.3
 * @design 字符串参与乘法: string * int, 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于算术运算符应编译失败
 */
function testStringMultiplicativeFail(): void {
  let s: string = "hello"
  let n: int = 3
  let r: int = s * n
}
