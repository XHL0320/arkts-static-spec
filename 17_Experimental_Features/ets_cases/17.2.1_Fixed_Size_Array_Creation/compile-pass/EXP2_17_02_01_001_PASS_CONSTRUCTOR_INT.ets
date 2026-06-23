/**
 * @id EXP2_17_02_01_001_PASS_CONSTRUCTOR_INT
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray 构造函数创建 int 类型元素数组：验证 new FixedArray<int>(len, elem) 正确编译
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testConstructorInt(): void {
  let a: FixedArray<int> = new FixedArray<int>(3, 42)
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
