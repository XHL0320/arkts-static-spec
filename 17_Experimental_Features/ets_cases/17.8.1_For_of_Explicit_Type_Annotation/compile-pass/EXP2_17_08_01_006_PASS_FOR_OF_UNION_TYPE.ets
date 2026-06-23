/**
 * @id EXP2_17_08_01_006_PASS_FOR_OF_UNION_TYPE
 * @expect compile-pass
 * @section 17.8.1
 * @design for-of 循环变量显式标注联合类型 int|string 遍历联合类型数组：标注类型与元素类型匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testForOfUnionType(): void {
  let arr: (int | string)[] = [1, "hello", 2, "world"]
  let count: int = 0
  for (let v: int | string of arr) {
    count = count + 1
  }
  console.log(count)
}
