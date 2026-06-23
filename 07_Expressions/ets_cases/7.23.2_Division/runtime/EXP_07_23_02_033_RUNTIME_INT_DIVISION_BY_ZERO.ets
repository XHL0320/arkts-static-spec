/**
 * @id EXP_07_23_02_033_RUNTIME_INT_DIVISION_BY_ZERO
 * @expect runtime
 * @section 7.23.2
 * @design 验证整数除零运行时抛 ArithmeticError。
 *         spec：if the divisor value of integer division is detected to be 0
 *         during compilation, then a compile-time error occurs. Otherwise,
 *         an ArithmeticError is thrown during execution.
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：变量除零应抛 ArithmeticError
 */
function main(): void {
  let a: int = 10
  let b: int = 0
  let c: int = a / b
}
main()
