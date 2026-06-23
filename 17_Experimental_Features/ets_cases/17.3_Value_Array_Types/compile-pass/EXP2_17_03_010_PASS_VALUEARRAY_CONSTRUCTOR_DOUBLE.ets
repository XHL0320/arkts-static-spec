/**
 * @id EXP2_17_03_010_PASS_VALUEARRAY_CONSTRUCTOR_DOUBLE
 * @expect compile-pass
 * @section 17.3
 * @design ValueArray<double> 使用构造函数创建：new ValueArray<double>(3, 7.) 创建含 3 个 7.0 元素的数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testValueArrayConstructorDouble(): void {
  let a: ValueArray<double> = new ValueArray<double>(3, 7.)
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
