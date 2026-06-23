/**
 * @id EXP2_17_08_01_002_PASS_FOR_OF_STRING_EXPLICIT_TYPE
 * @expect compile-pass
 * @section 17.8.1
 * @design for-of 循环变量显式标注 string 类型遍历 string[] 数组：验证标注类型与元素类型匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testForOfStringExplicitType(): void {
  let arr: string[] = ["hello", "world", "arkts"]
  let result: string = ""
  for (let s: string of arr) {
    result = result + s
  }
  console.log(result)
}
