/**
 * @id EXP_07_23_01_022_FAIL_BOOLEAN_MULTIPLICATION
 * @expect compile-fail
 * @section 7.23.1
 * @design 验证布尔乘法 boolean * boolean 产生编译时错误。
 *         乘法运算符不接受 boolean 类型。
 * @note 反向用例：布尔乘法应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: boolean = false
  let c = a * b
}
main()
