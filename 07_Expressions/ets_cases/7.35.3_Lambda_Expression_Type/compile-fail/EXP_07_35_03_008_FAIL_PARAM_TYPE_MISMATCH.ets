/**
 * @id EXP_07_35_03_008_FAIL_PARAM_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.35.3
 * @design 验证 Lambda 表达式参数类型与目标函数类型不匹配时产生编译时错误
 * @note 反向用例：参数类型不匹配应产生编译错误
 */
function main(): void {
  // 参数类型不匹配：目标为 (int) => int，但 lambda 参数为 string
  const f: (x: int) => int = (s: string): int => s.length
  let r: int = f(42)
  console.log("" + r)
}
