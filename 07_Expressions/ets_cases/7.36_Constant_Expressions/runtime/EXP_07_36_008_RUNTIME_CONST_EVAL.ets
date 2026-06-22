/**
 * @id EXP_07_36_008_RUNTIME_CONST_EVAL
 * @expect runtime
 * @section 7.36
 * @design 编译期常量求值正确性验证
 * @note 运行时用例：实际执行验证编译期常量求值
 */
const PI: double = 3.14159
const TWO: int = 2
function main(): void {
  let two_pi: double = PI * TWO as double
  if (two_pi <= 6.28) { throw new Error("assertion failed: TWO_PI should be > 6.28") }
  if (two_pi >= 6.29) { throw new Error("assertion failed: TWO_PI should be < 6.29") }
  console.log("verified")
}
