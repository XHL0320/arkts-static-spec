/**
 * @id EXP_07_27_5_FAIL_BOOL_NULL_CMP
 * @expect compile-fail
 * @section 7.27
 * @design boolean 与 null 比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testBoolNullCmpFail(): void {
  let r: boolean = true < null
}
