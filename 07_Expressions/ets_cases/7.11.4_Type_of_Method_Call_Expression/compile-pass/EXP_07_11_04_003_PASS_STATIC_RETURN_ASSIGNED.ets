/**
 * @id EXP_07_11_04_003_PASS_STATIC_RETURN_ASSIGNED
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证 static 非 void 方法返回值赋值给变量，编译通过
 * @note 正向用例：static 方法返回 int 类型，赋值给 int 变量，编译通过
 */
class Calculator {
  static getValue(): int {
    return 42;
  }
}

function main(): void {
  let x: int = Calculator.getValue();
}
