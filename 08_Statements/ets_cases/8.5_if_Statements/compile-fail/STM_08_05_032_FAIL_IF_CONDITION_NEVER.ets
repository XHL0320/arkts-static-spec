/**
 * @id STM_08_05_032_FAIL_IF_CONDITION_NEVER
 * @expect compile-fail
 * @section 8.5
 * @design never 类型变量不能用于 if 条件
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testIfNeverConditionFail(): void {
  let n: never = throw new Error()
  if (n) { console.log("bad") }
}
