/**
 * @id EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL
 * @expect runtime
 * @section 7.23.3
 * @design 验证字面量 bigint 取余除零 0n 产生编译时错误。
 *         spec：If the divisor value of the bigint remainder operator is 0n,
 *         then a runtime error is thrown during execution.
 *         如编译期可检测到 0n 则产生编译时错误。
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过（与除法 / 0n 不同）
 *       ⚠️ SPEC 不一致：bigint 除法检测 0n 但取余不检测 0n
 *       分类：D 类（Spec 与实现不一致）
 */
function main(): void {
  let a: bigint = 100n
  let b: bigint = a % 0n
}
main()

