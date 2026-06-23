/**
 * @id EXP_07_35_03_010_FAIL_PARAM_COUNT_MISMATCH
 * @expect compile-fail
 * @section 7.35.3
 * @design 验证 Lambda 表达式参数数量与目标函数类型不匹配时产生编译时错误
 * @note 反向用例：参数数量不匹配应产生编译错误
 */
function main(): void {
  // 参数数量多：目标为 () => int，但 lambda 需要 int 参数
  const f1: () => int = (x: int): int => x
  let r1: int = f1()
  console.log("" + r1)
}
