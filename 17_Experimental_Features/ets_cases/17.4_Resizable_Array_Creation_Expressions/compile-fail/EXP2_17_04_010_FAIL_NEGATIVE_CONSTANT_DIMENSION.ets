/**
 * @id EXP2_17_04_010_FAIL_NEGATIVE_CONSTANT_DIMENSION
 * @expect compile-fail
 * @section 17.4
 * @design 负常量维度：new number[-3](0) 维度为编译时可确定的负值，应产生编译时错误
 * @note 反向用例：验证负常量维度触发编译时错误
 */
function testNegativeConstantDimension(): void {
  let x = new number[-3](0)
  console.log(x.length)
}
