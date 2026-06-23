/**
 * @id EXP_07_24_024_FAIL_BOOLEAN_INT_EXPONENTIATION
 * @expect compile-fail
 * @section 7.24
 * @design 验证 boolean ** int 为非法类型组合，应报编译时错误
 * @note 反向用例：boolean 和 int 混合类型不能用于幂运算
 */
function main(): void {
  let a: boolean = true
  let b: int = 2
  let c = a ** b  // compile-time error
}
