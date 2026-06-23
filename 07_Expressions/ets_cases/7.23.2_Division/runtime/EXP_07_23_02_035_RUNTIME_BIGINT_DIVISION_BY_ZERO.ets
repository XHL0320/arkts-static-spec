/**
 * @id EXP_07_23_02_035_RUNTIME_BIGINT_DIVISION_BY_ZERO
 * @expect runtime
 * @section 7.23.2
 * @design 验证 bigint 除零运行时抛错误。
 *         spec：If the divisor value of the bigint division operator is 0n,
 *         then either a compile-time error occurs if detected at compile
 *         time, or a runtime error is thrown during execution.
 * @runtime-throws=Error
 * @note 运行时用例：bigint 变量除零应抛运行时错误
 */
function main(): void {
  let a: bigint = 10n
  let b: bigint = 0n
  let c: bigint = a / b
}
main()
