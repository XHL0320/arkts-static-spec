/**
 * @id EXP2_17_11_2_002_PASS_FINAL_METHOD_RETURN
 * @expect compile-pass
 * @section 17.11.2
 * @design final 方法带参数和返回值：验证 final 方法可以有参数和返回值
 * @note 正向用例：验证 final 方法支持参数传递和返回值
 */
class Calculator {
  final add(a: int, b: int): int {
    return a + b
  }

  final multiply(a: int, b: int): int {
    return a * b
  }
}

function testFinalMethodReturn(): void {
  let calc: Calculator = new Calculator()
  let sum: int = calc.add(3, 5)
  let prod: int = calc.multiply(4, 6)
  console.log(sum)
  console.log(prod)
}
