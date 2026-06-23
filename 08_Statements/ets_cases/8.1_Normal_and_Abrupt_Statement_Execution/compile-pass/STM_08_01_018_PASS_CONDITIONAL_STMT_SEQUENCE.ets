/**
 * @id STM_08_01_018_PASS_CONDITIONAL_STMT_SEQUENCE
 * @expect compile-pass
 * @section 8.1
 * @design 条件语句序列正常执行
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testConditionalSequence(): void {
  let cond: boolean = true
  if (cond) { console.log("then") }
  let x: int = cond ? 1 : 0
  console.log(x.toString())
}
