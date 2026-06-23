/**
 * @id EXP_07_12_01_014_RUNTIME_ARGUMENT_EXPRESSIONS
 * @expect runtime
 * @section 7.12.1
 * @design 验证表达式作为参数运行时正确求值
 * @note 运行时用例：参数为复合表达式和函数调用时的运行时求值
 */
function process(x: int, y: int): int {
  return x + y;
}

function getValue(): int {
  return 50;
}

function main(): void {
  let r: int = process(30 + 20, getValue());
  if (r != 100) {
    throw new Error("assertion failed: expected 100, got " + r);
  }

  let r2: int = process(2 * 15, 100 / 2);
  if (r2 != 80) {
    throw new Error("assertion failed: expected 80, got " + r2);
  }
  console.log("verified");
}
