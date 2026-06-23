/**
 * @id EXP_07_24_022_FAIL_BOOLEAN_EXPONENTIATION
 * @expect compile-fail
 * @section 7.24
 * @design 验证 boolean ** boolean 为非法类型组合，应报编译时错误
 * @note 反向用例：boolean 类型不能用于幂运算
 */
function main(): void {
  let a: boolean = true
  let b: boolean = false
  let c = a ** b  // compile-time error: boolean不能用于**
}
