/**
 * @id EXP_07_7_29_0008_FAIL_GEN_8
 * @expect compile-fail
 * @section 7.29.2
 * @design 补充用例8
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}
