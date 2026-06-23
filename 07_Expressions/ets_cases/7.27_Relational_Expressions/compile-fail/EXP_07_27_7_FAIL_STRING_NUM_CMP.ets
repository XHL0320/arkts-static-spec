/**
 * @id EXP_07_27_7_FAIL_STRING_NUM_CMP
 * @expect compile-fail
 * @section 7.27
 * @design string 与 number 比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testStringNumCmpFail(): void {
  let r: boolean = "5" < 10
}
