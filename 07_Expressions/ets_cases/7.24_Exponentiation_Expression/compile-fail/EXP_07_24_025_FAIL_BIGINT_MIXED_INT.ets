/**
 * @id EXP_07_24_025_FAIL_BIGINT_MIXED_INT
 * @expect compile-fail
 * @section 7.24
 * @design 验证 bigint ** int 为非法类型组合（幂运算要求 bigint 两侧都必须为 bigint），应报编译时错误
 * @note 反向用例：bigint 和 int 混合类型不能用于幂运算
 */
function main(): void {
  let a: bigint = 2n
  let b: int = 3
  let c = a ** b  // compile-time error: bigint和int混合
}
