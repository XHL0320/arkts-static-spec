/**
 * @id EXP_07_32_02_007_FAIL_COMPOUND_NON_LVALUE
 * @expect compile-fail
 * @section 7.32.2
 * @design 复合赋值非左值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCompoundNonLvalueFail(): void {
  5 += 3
  console.log("bad")
}
