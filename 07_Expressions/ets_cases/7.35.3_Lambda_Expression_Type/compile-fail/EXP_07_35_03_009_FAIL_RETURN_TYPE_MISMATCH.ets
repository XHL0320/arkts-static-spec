/**
 * @id EXP_07_35_03_009_FAIL_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.35.3
 * @design 验证 Lambda 表达式返回类型与目标函数类型不匹配时产生编译时错误
 * @note 反向用例：返回类型不匹配应产生编译错误
 */
function main(): void {
  // 返回类型不匹配：目标为 () => string，但 lambda 返回 int
  const f1: () => string = (): int => 42
  let r1: string = f1()
  console.log("" + r1)
}
