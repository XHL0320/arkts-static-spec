/**
 * @id EXP_07_30_003_FAIL_COND_AND_NON_BOOL
 * @expect compile-fail
 * @section 7.30
 * @design 非 boolean 操作数 && 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCondAndNonBoolFail(): void {
  let a: int = 1; let b: int = 2
  let bad: boolean = a && b; console.log(bad.toString())
}
