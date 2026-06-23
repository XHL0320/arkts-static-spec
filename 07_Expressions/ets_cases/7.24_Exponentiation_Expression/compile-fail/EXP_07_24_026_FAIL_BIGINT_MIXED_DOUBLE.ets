/**
 * @id EXP_07_24_026_FAIL_BIGINT_MIXED_DOUBLE
 * @expect compile-fail
 * @section 7.24
 * @design 验证 bigint ** double 为非法类型组合（幂运算要求 bigint 两侧都必须为 bigint），应报编译时错误
 * @note 反向用例：bigint 和 double 混合类型不能用于幂运算
 */
function main(): void {
  let a: bigint = 2n
  let b: double = 3.0
  let c = a ** b  // compile-time error: bigint和double混合
}
