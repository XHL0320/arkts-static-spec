/**
 * @id EXP_07_27_01_004_FAIL_NUMERIC_STRING
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证数值类型与字符串类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNumericString(): void {
  let n: int = 42
  let s: string = "hello"
  let r: boolean = n < s  // compile-fail: int < string, incompatible types
  console.log(r.toString())
}
