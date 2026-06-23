/**
 * @id EXP2_17_08_01_005_PASS_FOR_OF_ANY_ON_MIXED_ARRAY
 * @expect compile-pass
 * @section 17.8.1
 * @design for-of 循环变量显式标注 Any 类型遍历任意类型数组：Any 是顶类型，接受一切值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testForOfAnyOnMixedArray(): void {
  let arr: Any[] = [1, "two", 3.0]
  let count: int = 0
  for (let a: Any of arr) {
    count = count + 1
  }
  console.log(count)
}
