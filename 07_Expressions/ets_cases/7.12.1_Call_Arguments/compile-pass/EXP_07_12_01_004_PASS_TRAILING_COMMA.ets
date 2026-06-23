/**
 * @id EXP_07_12_01_004_PASS_TRAILING_COMMA
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证尾部逗号：argumentSequence 允许最后一个表达式后有可选逗号 ','?
 * @note 正向用例：func(a, b,) 中 b 后有逗号，编译通过
 */
function add(a: int, b: int): int {
  return a + b;
}

function main(): void {
  let r: int = add(3, 7,);
}
