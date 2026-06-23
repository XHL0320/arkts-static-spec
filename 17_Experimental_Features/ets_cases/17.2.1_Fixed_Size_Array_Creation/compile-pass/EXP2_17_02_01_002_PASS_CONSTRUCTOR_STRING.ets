/**
 * @id EXP2_17_02_01_002_PASS_CONSTRUCTOR_STRING
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray 构造函数创建 string 类型元素数组：验证 new FixedArray<string>(len, elem) 正确编译
 * @note 正向用例：验证该特性编译通过的正确用法，创建 ["a", "a", "a"]
 */
function testConstructorString(): void {
  let a: FixedArray<string> = new FixedArray<string>(3, "a")
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
