/**
 * @id STM_08_07_033_FAIL_DO_NEVER_COND
 * @expect compile-fail
 * @section 8.7
 * @design never 类型作为 do-while 条件
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testDoNeverCondFail(): void {
  let n: never = throw new Error()
  do { console.log("once") } while (n)
}
