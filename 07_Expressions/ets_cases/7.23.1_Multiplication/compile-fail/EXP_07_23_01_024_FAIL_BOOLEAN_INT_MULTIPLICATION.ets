/**
 * @id EXP_07_23_01_024_FAIL_BOOLEAN_INT_MULTIPLICATION
 * @expect compile-fail
 * @section 7.23.1
 * @design 验证布尔与整数乘法 boolean * int 产生编译时错误。
 *         乘法运算符不接受 boolean 类型操作数。
 * @note 反向用例：布尔与数值混合乘法应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: int = 5
  let c = a * b
}
main()
