/**
 * @id LEX_02_07_099_RT_DO_WHILE_KEYWORD
 * @expect runtime
 * @section 2.7
 * @design do-while 关键字运行时验证
 * @note runtime 用例：验证 do-while 关键字的运行时行为
 */

function main(): void {
  // do-while 关键字
  let i = 0
  let sum = 0
  
  do {
    sum = sum + i
    i++
  } while (i < 5)
  
  if (sum !== 10) { throw new Error("do-while failed, got " + sum) }
}
