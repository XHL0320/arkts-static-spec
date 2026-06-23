/**
 * @id EXP2_17_04_016_FAIL_NULL_DIMENSION
 * @expect compile-fail
 * @section 17.4
 * @design null 维度：new number[null](0) 维度为 null 类型，不可赋值给 int，应产生编译时错误
 * @note 反向用例：验证维度表达式类型为 null 时触发编译时错误
 */
function testNullDimension(): void {
  let x = new number[null](0)
  console.log(x.length)
}
