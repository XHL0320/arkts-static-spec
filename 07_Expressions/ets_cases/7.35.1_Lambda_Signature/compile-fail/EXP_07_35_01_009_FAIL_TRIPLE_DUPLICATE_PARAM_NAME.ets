/**
 * @id EXP_07_35_01_009_FAIL_TRIPLE_DUPLICATE_PARAM_NAME
 * @expect compile-fail
 * @section 7.35.1
 * @design 验证 Lambda 表达式多个形式参数中存在同名参数（三个参数中两个同名）时产生编译时错误
 * @note 反向用例：Lambda 签名中 a 重复出现，应产生编译时错误
 */
function main(): void {
  // 三个参数中 a 重复（第一个和第三个同名）
  const f: (x: int, y: int, z: int) => int = (a: int, b: int, a: int) => a + b + a
  let r: int = f(1, 2, 3)
  console.log("" + r)
}
