/**
 * @id EXP2_17_04_015_FAIL_BOOLEAN_DIMENSION
 * @expect compile-fail
 * @section 17.4
 * @design 布尔维度：new number[true](0) 维度为 boolean 类型，不可赋值给 int，应产生编译时错误
 * @note 反向用例：验证维度表达式类型为 boolean 时触发编译时错误
 */
function testBooleanDimension(): void {
  let x = new number[true](0)
  console.log(x.length)
}
