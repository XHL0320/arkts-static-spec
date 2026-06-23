/**
 * @id EXP_07_12_01_003_PASS_MULTIPLE_ARGUMENTS
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证多参数调用：func(expr1, expr2, expr3) 逗号分隔
 * @note 正向用例：三个 int 参数逗号分隔，编译通过
 */
function sum(a: int, b: int, c: int): int {
  return a + b + c;
}

function main(): void {
  let r: int = sum(1, 2, 3);
}
