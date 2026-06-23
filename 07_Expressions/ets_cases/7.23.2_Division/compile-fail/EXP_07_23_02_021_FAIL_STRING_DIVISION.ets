/**
 * @id EXP_07_23_02_021_FAIL_STRING_DIVISION
 * @expect compile-fail
 * @section 7.23.2
 * @design 验证字符串除法 string / string 产生编译时错误。
 *         除法运算符仅接受数值类型和 bigint，string 不在其中。
 * @note 反向用例：字符串除法应报编译时错误
 */
function main(): void {
  let a: string = "hello"
  let b: string = "world"
  let c = a / b
}
main()
