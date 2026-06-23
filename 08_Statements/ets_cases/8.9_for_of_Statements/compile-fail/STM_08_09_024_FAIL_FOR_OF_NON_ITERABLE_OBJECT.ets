/**
 * @id STM_08_09_024_FAIL_FOR_OF_NON_ITERABLE_OBJECT
 * @expect compile-fail
 * @section 8.9
 * @design 非 iterable Object 作为 for-of 源应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testForOfNonIterableFail(): void {
  let obj: Object = new Object()
  for (let x of obj) { console.log("bad") }
}
