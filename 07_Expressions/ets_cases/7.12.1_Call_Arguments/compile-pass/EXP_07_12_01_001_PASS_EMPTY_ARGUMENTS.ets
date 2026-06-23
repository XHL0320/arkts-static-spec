/**
 * @id EXP_07_12_01_001_PASS_EMPTY_ARGUMENTS
 * @expect compile-pass
 * @section 7.12.1
 * @design 验证空参调用：callArguments 中 argumentSequence 可选，() 合法
 * @note 正向用例：空参数列表函数调用 func()，验证 argumentSequence? 语法规则
 */
function greet(): string {
  return "hello";
}

function main(): void {
  let s: string = greet();
}
