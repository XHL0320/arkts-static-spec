/**
 * @id EXP_07_7_29_0007_FAIL_GEN_7
 * @expect compile-fail
 * @section 7.29
 * @design 补充用例7
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testGenericFail(): void {
  let a: int = 5; let b: boolean = true
  let r: boolean = a < b
  console.log(r.toString())
}
