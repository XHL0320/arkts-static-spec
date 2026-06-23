/**
 * @id EXP_07_7_34_0006_FAIL_GEN_6
 * @expect compile-fail
 * @section 7.7_34
 * @design 补充用例6
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}
