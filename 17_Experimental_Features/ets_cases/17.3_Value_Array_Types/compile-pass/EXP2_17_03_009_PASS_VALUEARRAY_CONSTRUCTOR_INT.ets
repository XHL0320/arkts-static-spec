/**
 * @id EXP2_17_03_009_PASS_VALUEARRAY_CONSTRUCTOR_INT
 * @expect compile-pass
 * @section 17.3
 * @design ValueArray<int> 使用构造函数创建：new ValueArray<int>(5, 0) 创建含 5 个零元素的数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testValueArrayConstructorInt(): void {
  let a: ValueArray<int> = new ValueArray<int>(5, 0)
  console.log(a[0])
  console.log(a[4])
  console.log(a.length)
}
