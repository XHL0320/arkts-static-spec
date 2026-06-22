/**
 * @id EXP_07_36_008_RUNTIME_CONST_EVAL
 * @expect runtime
 * @section 7.36
 * @design 编译期常量求值正确性验证

 * @note 运行时用例：实际执行验证编译期常量求值
 */
const PI: double = 3.14159
const TWO_PI: double = PI * 2.0
function main(): void {
  if (TWO_PI > 6.28) { throw new Error("assertion: TWO_PI should be ~6.28318") }
  if (TWO_PI < 6.28) { throw new Error("assertion: TWO_PI should be > 6.28") }
  console.log("verified")
}
