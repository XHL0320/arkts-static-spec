/**
 * @id EXP_07_12_01_011_RUNTIME_MULTIPLE_ARGS
 * @expect runtime
 * @section 7.12.1
 * @design 验证多参数调用运行时值正确传递
 * @note 运行时用例：多个逗号分隔参数正确传递给函数
 */
function sum(a: int, b: int, c: int): int {
  return a + b + c;
}

function main(): void {
  let r: int = sum(10, 20, 30);
  if (r != 60) {
    throw new Error("assertion failed: expected 60, got " + r);
  }
  console.log("verified");
}
