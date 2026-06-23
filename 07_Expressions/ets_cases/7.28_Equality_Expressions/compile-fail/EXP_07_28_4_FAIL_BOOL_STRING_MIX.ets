/**
 * @id EXP_07_28_4_FAIL_BOOL_STRING_MIX
 * @expect compile-fail
 * @section 7.28
 * @design boolean与string相等应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testBoolStringMixFail(): void {
  let r: boolean = true == "true"
}
