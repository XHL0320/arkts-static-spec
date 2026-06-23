/**
 * @id EXP_07_22_023_FAIL_BIGINT_MIXED_MULTIPLICATIVE
 * @expect compile-fail
 * @section 7.22
 * @design 验证 bigint 与 int 混合乘法 bigint * int 产生编译时错误。
 *         类型组合表规定 bigint 乘法仅支持 bigint*bigin。
 *         此用例与 spec 中示例一致：
 *         "let i = 1n * 2  // Compile-time error"
 * @note 反向用例：bigint 与普通数值混合应报编译时错误
 */
function main(): void {
  let a: bigint = 1n
  let b: int = 2
  let c = a * b
}
main()
