/**
 * @id EXP2_17_02_01_007_PASS_LENGTH_PROPERTY
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray length 属性访问：验证 a.length 正确编译，无论通过构造函数还是字面量创建
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testLengthProperty(): void {
  let a: FixedArray<string> = new FixedArray<string>(5, "x")
  let count: int = a.length
  console.log(count)

  let b: FixedArray<number> = [1, 2, 3, 4]
  let countB: int = b.length
  console.log(countB)

  let c: FixedArray<int> = new FixedArray<int>(1, 99)
  console.log(c.length)
}
