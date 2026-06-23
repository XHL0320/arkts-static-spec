/**
 * @id EXP2_17_04_01_011_FAIL_FLOAT_DIMENSION
 * @expect compile-fail
 * @section 17.4.1
 * @design float 维度表达式：验证 float 类型维度表达式产生 compile-time error
 * @note 反向用例：维度表达式类型必须可赋值给 int，new int[3.14] (0) 应在编译时被拒绝
 */
function testFloatDimensionFail(): void {
  let arr: int[] = new int[3.14] (0)
  console.log(arr.length)
}
