/**
 * @id EXP2_17_04_014_FAIL_STRING_DIMENSION
 * @expect compile-fail
 * @section 17.4
 * @design 字符串维度：new number["hello"](0) 维度为 string 类型，不可赋值给 int，应产生编译时错误
 * @note 反向用例：验证维度表达式类型为 string 时触发编译时错误
 */
function testStringDimension(): void {
  let x = new number["hello"](0)
  console.log(x.length)
}
