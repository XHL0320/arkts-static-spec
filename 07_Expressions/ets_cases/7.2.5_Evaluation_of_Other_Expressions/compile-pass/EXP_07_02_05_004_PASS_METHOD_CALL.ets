/**
 * @id EXP_07_02_05_004_PASS_METHOD_CALL
 * @expect compile-pass
 * @section 7.2.5
 * @design 方法调用表达式基本编译通过：对象方法调用，验证对象先于参数求值的编译正确性
 * @note 正向用例：验证 Method Call Expressions 编译通过
 */
class Calculator {
  add(a: int, b: int): int {
    return a + b
  }

  getValue(): int {
    return 42
  }
}

function makeCalc(): Calculator {
  return new Calculator()
}

let r1: int = makeCalc().add(3, 4)
let r2: int = makeCalc().getValue()
