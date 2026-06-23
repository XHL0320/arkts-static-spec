/**
 * @id EXP2_17_03_004_PASS_VALUEARRAY_DOUBLE_LITERAL
 * @expect compile-pass
 * @section 17.3
 * @design ValueArray<double> 使用数组字面量创建：验证 double 值类型数组声明和初始化
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testValueArrayDoubleLiteral(): void {
  let a: ValueArray<double> = [1.0, 2.0, 3.0]
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
