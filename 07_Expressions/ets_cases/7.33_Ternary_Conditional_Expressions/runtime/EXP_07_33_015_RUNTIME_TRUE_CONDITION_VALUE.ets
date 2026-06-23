/**
 * @id EXP_07_33_015_RUNTIME_TRUE_CONDITION_VALUE
 * @expect runtime
 * @section 7.33
 * @design 验证三元条件表达式当 condition=true 时：选择 whenTrue 分支求值，返回 whenTrue 的值，whenFalse 不执行
 * @note 运行时用例：condition=true 时验证返回值正确性
 */
function main(): void {
  // condition=true → 返回 whenTrue 的值
  let r1: int = true ? 42 : 99;
  if (r1 != 42) {
    throw new Error("assertion failed: true ? 42 : 99 expected 42, got " + r1);
  }

  // condition=true，whenTrue 为字符串
  let r2: string = true ? "hello" : "world";
  if (r2 != "hello") {
    throw new Error("assertion failed: true ? 'hello' : 'world' expected hello, got " + r2);
  }

  // condition=true，whenTrue 为浮点数（float literal）
  let r3: float = true ? 3.14f : 2.71f;
  if (r3 != 3.14f) {
    throw new Error("assertion failed: true ? 3.14f : 2.71f expected 3.14, got " + r3);
  }

  console.log("verified");
}
