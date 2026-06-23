/**
 * @id EXP2_17_04_011_FAIL_FLOAT_DIMENSION
 * @expect compile-fail
 * @section 17.4
 * @design 浮点维度：new number[3.14](0) 维度为 double 字面量，不可赋值给 int，应产生编译时错误
 * @note 反向用例：验证非 int 维度的浮点常量触发编译时错误
 */
function testFloatDimension(): void {
  let x = new number[3.14](0)
  console.log(x.length)
}
