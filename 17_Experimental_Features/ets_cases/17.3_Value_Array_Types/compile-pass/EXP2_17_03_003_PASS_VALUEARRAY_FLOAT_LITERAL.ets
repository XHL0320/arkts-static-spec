/**
 * @id EXP2_17_03_003_PASS_VALUEARRAY_FLOAT_LITERAL
 * @expect compile-pass
 * @section 17.3
 * @design ValueArray<float> 使用数组字面量创建：验证 float 值类型数组声明和初始化
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testValueArrayFloatLiteral(): void {
  let a: ValueArray<float> = [1.5, 2.5, 3.5]
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
