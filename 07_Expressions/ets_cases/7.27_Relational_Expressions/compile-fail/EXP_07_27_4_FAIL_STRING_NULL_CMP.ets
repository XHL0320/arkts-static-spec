/**
 * @id EXP_07_27_4_FAIL_STRING_NULL_CMP
 * @expect compile-fail
 * @section 7.27
 * @design string 与 null 比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function testStringNullCmpFail(): void {
  let r: boolean = "a" < null
}
