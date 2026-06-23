/**
 * @id EXP_07_23_03_033_RUNTIME_INT_REMAINDER_BY_ZERO
 * @expect runtime
 * @section 7.23.3
 * @design 验证整数取余除零运行时抛 ArithmeticError。
 *         spec：if the divisor is 0 at runtime, ArithmeticError is thrown.
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：变量除零应抛 ArithmeticError
 */
function main(): void {
  let a: int = 10
  let b: int = 0
  let c: int = a % b
}
main()
