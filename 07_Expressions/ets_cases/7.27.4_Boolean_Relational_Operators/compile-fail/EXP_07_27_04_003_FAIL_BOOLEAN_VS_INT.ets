/**
 * @id EXP_07_27_04_003_FAIL_BOOLEAN_VS_INT
 * @expect compile-fail
 * @section 7.27.4
 * @design boolean 与 int 关系比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBooleanVsIntFail(): void {
  let a: boolean = true; let b: int = 1
  let bad: boolean = a > b; console.log(bad.toString())
}
