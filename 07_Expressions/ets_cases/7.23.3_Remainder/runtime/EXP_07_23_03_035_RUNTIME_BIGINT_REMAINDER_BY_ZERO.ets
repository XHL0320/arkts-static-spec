/**
 * @id EXP_07_23_03_035_RUNTIME_BIGINT_REMAINDER_BY_ZERO
 * @expect runtime
 * @section 7.23.3
 * @design 验证 bigint 取余除零 0n 时抛运行时错误。
 *         spec：If the divisor value of the bigint remainder operator is 0n,
 *         then a runtime error is thrown during execution.
 * @runtime-throws=Error
 * @note 运行时用例：bigint 变量取余除零 0n 应抛运行时错误
 */
function main(): void {
  let a: bigint = 10n
  let b: bigint = 0n
  let c: bigint = a % b
}
main()
