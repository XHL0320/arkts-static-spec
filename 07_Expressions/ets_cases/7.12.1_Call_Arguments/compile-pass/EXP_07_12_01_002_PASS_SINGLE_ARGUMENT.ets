/**
 * @id EXP_07_12_01_002_PASS_SINGLE_ARGUMENT
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证单参数调用：func(expr) 单个表达式参数
 * @note 正向用例：单个 int 参数传递，编译通过
 */
function twice(n: int): int {
  return n * 2;
}

function main(): void {
  let r: int = twice(21);
}
