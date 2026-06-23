/**
 * @id EXP2_17_02_01_003_PASS_CONSTRUCTOR_FLOAT
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray 构造函数创建浮点数类型元素数组：验证 new FixedArray<number>(len, elem) 及 float/double 类型正确编译
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testConstructorFloat(): void {
  let a: FixedArray<number> = new FixedArray<number>(4, 3.14)
  let b: FixedArray<double> = new FixedArray<double>(3, 2.718)
  let c: FixedArray<float> = new FixedArray<float>(2, 1.5)
  console.log(a[0])
  console.log(b.length)
  console.log(c[1])
}
