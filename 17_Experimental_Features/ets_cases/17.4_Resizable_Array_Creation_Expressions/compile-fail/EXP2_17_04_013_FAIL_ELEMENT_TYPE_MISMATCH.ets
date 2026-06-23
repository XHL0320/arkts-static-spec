/**
 * @id EXP2_17_04_013_FAIL_ELEMENT_TYPE_MISMATCH
 * @expect compile-fail
 * @section 17.4
 * @design 元素类型不匹配：new int[3]("string") 中 string 不可赋值给 int，应产生编译时错误
 * @note 反向用例：验证 arrayElement 不可赋值给 arrayElementType 时触发编译时错误
 */
function testElementTypeMismatch(): void {
  let arr = new int[3]("string")
  console.log(arr.length)
}
