/**
 * @id EXP2_17_09_002_PASS_OVERLOAD_EXPLICITIMPLICIT
 * @expect compile-pass
 * @section 17.9
 * @design 可结合显式和隐式重载
 * @note 正向用例：有默认参数的函数（隐式重载）与显式 overload 结合
 */
function greetDefault(name: string, greeting: string = "Hello"): string {
  return greeting + " " + name
}
function greetFormal(title: string, name: string): string {
  return title + " " + name
}
overload greet { greetDefault, greetFormal }
