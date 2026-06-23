/**
 * @id STM_08_09_027_FAIL_FOR_OF_WRONG_TYPE
 * @expect compile-fail
 * @section 8.9
 * @design for-of 外部变量类型不匹配应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForOfWrongTypeFail(): void {
  let arr: int[] = [1, 2, 3]
  let s: string
  for (s of arr) { console.log("bad") }
}
