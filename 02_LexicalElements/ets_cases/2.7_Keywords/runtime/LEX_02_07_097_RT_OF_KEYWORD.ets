/**
 * @id LEX_02_07_097_RT_OF_KEYWORD
 * @expect runtime
 * @section 2.7
 * @design of 关键字运行时验证
 * @note runtime 用例：验证 of 关键字的运行时行为
 */

function main(): void {
  // of 关键字 - for-of 循环
  let arr = [1, 2, 3, 4, 5]
  let sum = 0
  
  for (let item of arr) {
    sum = sum + item
  }
  
  if (sum !== 15) { throw new Error("for-of failed, got " + sum) }
}
