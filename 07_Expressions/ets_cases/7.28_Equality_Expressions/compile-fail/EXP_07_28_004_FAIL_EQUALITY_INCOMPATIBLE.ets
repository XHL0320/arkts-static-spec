/**
 * @id EXP_07_28_004_FAIL_EQUALITY_INCOMPATIBLE
 * @expect compile-fail
 * @section 7.28
 * @design 不兼容类型相等比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testEqualityIncompatibleFail(): void {
  let a: int = 5; let b: string = "5"
  let bad: boolean = a == b; console.log(bad.toString())
}
