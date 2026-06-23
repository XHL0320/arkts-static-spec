/**
 * @id EXP_07_24_021_FAIL_STRING_EXPONENTIATION
 * @expect compile-fail
 * @section 7.24
 * @design 验证 string ** string 为非法类型组合，应报编译时错误
 * @note 反向用例：string 类型不能用于幂运算
 */
function main(): void {
  let a: string = "hello"
  let b: string = "world"
  let c = a ** b  // compile-time error: string不能用于**
}
