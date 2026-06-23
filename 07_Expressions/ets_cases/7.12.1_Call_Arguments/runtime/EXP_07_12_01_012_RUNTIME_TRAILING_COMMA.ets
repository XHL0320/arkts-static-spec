/**
 * @id EXP_07_12_01_012_RUNTIME_TRAILING_COMMA
 * @expect runtime
 * @section 7.12.1
 * @design 验证尾部逗号不影响运行时参数传递
 * @note 运行时用例：尾部逗号 func(a, b,) 中 b 后逗号不改变语义
 */
function multiply(a: int, b: int): int {
  return a * b;
}

function main(): void {
  let r1: int = multiply(3, 4);
  let r2: int = multiply(3, 4,);
  if (r1 != 12) {
    throw new Error("assertion failed: expected 12, got " + r1);
  }
  if (r2 != 12) {
    throw new Error("assertion failed: expected 12 with trailing comma, got " + r2);
  }
  console.log("verified");
}
