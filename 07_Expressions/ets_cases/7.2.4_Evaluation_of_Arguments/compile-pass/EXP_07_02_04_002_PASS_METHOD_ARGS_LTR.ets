/**
 * @id EXP_07_02_04_002_PASS_METHOD_ARGS_LTR
 * @expect compile-pass
 * @section 7.2.4
 * @design 方法调用参数从左到右求值基本编译通过：对象方法调用中多个参数表达式
 * @note 正向用例：验证方法调用的参数从左到右编译通过
 */
class Calculator {
  add(a: int, b: int, c: int): int {
    return a + b + c
  }
}

function wrap(x: int): int {
  return x * 2
}

let calc: Calculator = new Calculator()
let result: int = calc.add(wrap(1), wrap(2), wrap(3))
