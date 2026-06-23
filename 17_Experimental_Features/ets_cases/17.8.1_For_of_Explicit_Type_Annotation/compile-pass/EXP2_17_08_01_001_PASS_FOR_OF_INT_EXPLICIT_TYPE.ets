/**
 * @id EXP2_17_08_01_001_PASS_FOR_OF_INT_EXPLICIT_TYPE
 * @expect compile-pass
 * @section 17.8.1
 * @design for-of 循环变量显式标注 int 类型遍历 int[] 数组：验证标注类型与元素类型完全匹配时编译通过
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testForOfIntExplicitType(): void {
  let arr: int[] = [1, 2, 3, 4, 5]
  let sum: int = 0
  for (let v: int of arr) {
    sum = sum + v
  }
  console.log(sum)
}
