/**
 * @id LEX_02_08_033_PASS_ARROW_FUNCTION
 * @expect compile-pass
 * @section 2.8
 * @design 箭头函数
 * @note compile-pass 用例：验证箭头函数 =>
 */

// 箭头函数 =>
let add = (a: int, b: int): int => a + b
let square = (x: int): int => x * x
let greet = (name: string): string => `Hello, ${name}!`

// 多行箭头函数
let complex = (x: int, y: int): int => {
  let sum = x + y
  return sum * 2
}
