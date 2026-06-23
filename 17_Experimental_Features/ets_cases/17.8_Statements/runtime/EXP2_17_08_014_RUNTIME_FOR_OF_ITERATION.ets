/**
 * @id EXP2_17_08_014_RUNTIME_FOR_OF_ITERATION
 * @expect runtime
 * @section 17.8
 * @design 验证 for-of 遍历数组和字符串的运行时行为
 * @note 运行时用例：实际执行验证 for-of 对数组和字符串的迭代顺序和值正确
 */
function main(): void {
  // Test for-of with number array
  let numbers: number[] = [10, 20, 30, 40, 50]
  let sumArr: number = 0
  for (let num of numbers) {
    sumArr = sumArr + num
  }
  if (sumArr != 150) {
    throw new Error("for-of array sum assertion failed: expected 150, got " + sumArr)
  }

  // Test for-of iteration order
  let orderCheck: string = ""
  for (let n of numbers) {
    orderCheck = orderCheck + n + ","
  }
  if (orderCheck != "10,20,30,40,50,") {
    throw new Error("for-of order assertion failed: expected '10,20,30,40,50,', got '" + orderCheck + "'")
  }

  // Test for-of with string
  let text: string = "ABC"
  let charResult: string = ""
  for (let ch of text) {
    charResult = charResult + ch
  }
  if (charResult != "ABC") {
    throw new Error("for-of string assertion failed: expected 'ABC', got '" + charResult + "'")
  }

  // Test for-of with break
  let breakSum: number = 0
  for (let val of numbers) {
    if (val >= 30) {
      break
    }
    breakSum = breakSum + val
  }
  // Only adds 10 + 20 = 30
  if (breakSum != 30) {
    throw new Error("for-of break assertion failed: expected 30, got " + breakSum)
  }

  console.log("verified")
}
