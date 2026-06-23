/**
 * @id EXP_07_11_04_009_RUNTIME_STATIC_RETURN_VALUE
 * @expect runtime
 * @section 7.11.4
 * @design 验证 static 方法返回值运行时正确性
 * @note 运行时用例：验证 static 方法返回 int 值运行时正确
 */
class Calculator {
  static add(a: int, b: int): int {
    return a + b;
  }
}

function main(): void {
  let result: int = Calculator.add(10, 20);
  if (result != 30) {
    throw new Error("assertion failed: expected 30, got " + result);
  }
  console.log("verified");
}
