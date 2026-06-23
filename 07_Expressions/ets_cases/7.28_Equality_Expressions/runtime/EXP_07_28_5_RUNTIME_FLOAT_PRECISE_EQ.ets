/**
 * @id EXP_07_28_5_RUNTIME_FLOAT_PRECISE_EQ
 * @expect runtime
 * @section 7.28
 * @design 浮点数精确相等运行时
 * @note 运行时用例：实际执行验证浮点数精确相等运行时
 */

function main(): void {
  let a: double = 1.0/3.0; let b: double = a
  if (a != b) { throw new Error("assertion: same ref") }
  console.log("verified")
}
