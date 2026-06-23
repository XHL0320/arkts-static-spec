/**
 * @id EXP_07_22_021_FAIL_STRING_MULTIPLICATIVE
 * @expect compile-fail
 * @section 7.22
 * @design 验证字符串乘法 string * string 产生编译时错误。
 *         类型组合表规定乘法仅接受数值类型和 bigint，
 *         string 不在其中。
 * @note 反向用例：字符串在乘法运算符中应报编译时错误
 */
function main(): void {
  let a: string = "hello"
  let b: string = "world"
  let c = a * b
}
main()
