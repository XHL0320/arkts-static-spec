/**
 * @id STM_08_07_032_FAIL_WHILE_NEVER_COND
 * @expect compile-fail
 * @section 8.7
 * @design never 类型作为 while 条件
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testWhileNeverCondFail(): void {
  let n: never = throw new Error()
  while (n) { console.log("bad") }
}
