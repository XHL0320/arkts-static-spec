/**
 * @id EXP_07_31_003_FAIL_COND_OR_NON_BOOL
 * @expect compile-fail
 * @section 7.31
 * @design 非 boolean 操作数 || 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCondOrNonBoolFail(): void {
  let a: int = 0; let b: int = 1
  let bad: boolean = a || b; console.log(bad.toString())
}
