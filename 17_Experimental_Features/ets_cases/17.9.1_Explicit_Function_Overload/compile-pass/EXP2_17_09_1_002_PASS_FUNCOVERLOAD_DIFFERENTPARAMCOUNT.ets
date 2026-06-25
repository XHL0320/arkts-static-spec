/**
 * @id EXP2_17_09_1_002_PASS_FUNCOVERLOAD_DIFFERENTPARAMCOUNT
 * @expect compile-pass
 * @section 17.9.1
 * @design overload 函数重载：不同参数数量(0/1/2/3 参数)
 * @note 正向用例：验证不同参数数量的函数可以组成重载集
 */
function greet0(): string {
  return "Hello"
}
function greet1(name: string): string {
  return "Hello " + name
}
function greet2(first: string, last: string): string {
  return "Hello " + first + " " + last
}
overload greet { greet0, greet1, greet2 }
