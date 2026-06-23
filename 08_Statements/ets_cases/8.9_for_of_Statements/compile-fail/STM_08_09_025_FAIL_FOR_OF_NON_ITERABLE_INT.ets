/**
 * @id STM_08_09_025_FAIL_FOR_OF_NON_ITERABLE_INT
 * @expect compile-fail
 * @section 8.9
 * @design int 类型非 iterable 作为 for-of 源应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForOfIntFail(): void {
  for (let x of 42) { console.log("bad") }
}
