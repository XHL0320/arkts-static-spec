/**
 * @id EXP_07_27_6_FAIL_INT_UNDEFINED_CMP
 * @expect compile-fail
 * @section 7.27
 * @design int 与 undefined 比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testIntUndefinedCmpFail(): void {
  let r: boolean = 5 < undefined
}
