/**
 * @id EXP_07_12_01_006_PASS_ARGUMENT_EXPRESSION
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证表达式作为参数：argumentSequence 的 expression 可以是复杂表达式
 * @note 正向用例：func(a + b, getValue()) 参数为表达式，编译通过
 */
function process(x: int, y: int): int {
  return x + y;
}

function getValue(): int {
  return 10;
}

function main(): void {
  let r: int = process(5 + 3, getValue());
}
