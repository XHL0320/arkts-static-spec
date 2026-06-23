/**
 * @id LEX_02_04_039_RT_LOOP_LINE_SEP
 * @expect runtime
 * @section 2.4
 * @design 循环语句内换行运行时验证
 * @note runtime 用例：验证循环语句中的换行符不影响程序行为
 */

function main(): void {
  // for 循环内换行
  let sum1: int = 0
  for (let i = 0; i < 5; i++) {
    sum1 = sum1 + i
  }
  if (sum1 !== 10) { throw new Error("for loop failed, got " + sum1) }

  // while 循环内换行
  let sum2: int = 0
  let i = 0
  while (i < 5) {
    sum2 = sum2 + i
    i++
  }
  if (sum2 !== 10) { throw new Error("while loop failed, got " + sum2) }

  // for-of 循环内换行
  let arr = [1, 2, 3, 4, 5]
  let sum3: int = 0
  for (let item of arr) {
    sum3 = sum3 + item
  }
  if (sum3 !== 15) { throw new Error("for-of loop failed, got " + sum3) }
}
