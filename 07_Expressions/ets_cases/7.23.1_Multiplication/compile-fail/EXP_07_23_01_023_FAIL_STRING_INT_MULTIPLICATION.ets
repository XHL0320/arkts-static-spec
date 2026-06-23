/**
 * @id EXP_07_23_01_023_FAIL_STRING_INT_MULTIPLICATION
 * @expect compile-fail
 * @section 7.23.1
 * @design 验证字符串与整数乘法 string * int 产生编译时错误。
 *         乘法运算符不接受 string 类型操作数。
 * @note 反向用例：字符串与数值混合乘法应报编译时错误
 */
function main(): void {
  let a: string = "hello"
  let b: int = 5
  let c = a * b
}
main()
