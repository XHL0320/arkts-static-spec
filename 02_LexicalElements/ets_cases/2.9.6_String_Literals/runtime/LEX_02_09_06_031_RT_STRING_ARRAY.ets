/**
 * @id LEX_02_09_06_031_RT_STRING_ARRAY
 * @expect runtime
 * @section 2.9.6
 * @design 字符串数组运行时验证
 * @note runtime 用例：验证字符串数组的运行时行为
 */

function main(): void {
  // 字符串数组
  let arr1: string[] = ["Hello", "World", "Test"]

  // 数组访问
  if (arr1[0] !== "Hello") { throw new Error("arr1[0] failed, got " + arr1[0]) }
  if (arr1[1] !== "World") { throw new Error("arr1[1] failed, got " + arr1[1]) }
  if (arr1[2] !== "Test") { throw new Error("arr1[2] failed, got " + arr1[2]) }

  // 数组长度
  if (arr1.length !== 3) { throw new Error("arr1.length failed, got " + arr1.length) }

  // 数组遍历
  let sum = ""
  for (let s of arr1) {
    sum = sum + s
  }
  if (sum !== "HelloWorldTest") { throw new Error("array iteration failed, got " + sum) }
}
