/**
 * @id CON_06_01_007_PASS_METHOD_ARGUMENT_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Call context: 方法调用实参类型与形参类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Calculator {
  add(a: int, b: int): int {
    return a + b
  }

  concat(s1: string, s2: string): string {
    return s1 + s2
  }
}

function testMethodArgumentBasic(): void {
  let calc: Calculator = new Calculator()
  let sum: int = calc.add(10, 20)
  let result: string = calc.concat("hello", "world")
}
