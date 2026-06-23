/**
 * @id EXP_07_28_2_FAIL_INT_STRING_MIX
 * @expect compile-fail
 * @section 7.28
 * @design int与string相等应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testIntStringMixFail(): void {
  let r: boolean = 5 == "5"
}
