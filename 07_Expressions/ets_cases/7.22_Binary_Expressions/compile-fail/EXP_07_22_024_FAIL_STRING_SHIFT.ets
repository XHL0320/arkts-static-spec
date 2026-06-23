/**
 * @id EXP_07_22_024_FAIL_STRING_SHIFT
 * @expect compile-fail
 * @section 7.22
 * @design 验证字符串左移 string << int 产生编译时错误。
 *         类型组合表规定移位运算符仅支持数值类型和 bigint，
 *         string 不在其中。
 * @note 反向用例：字符串在移位运算符中应报编译时错误
 */
function main(): void {
  let a: string = "hello"
  let b: int = 2
  let c = a << b
}
main()
