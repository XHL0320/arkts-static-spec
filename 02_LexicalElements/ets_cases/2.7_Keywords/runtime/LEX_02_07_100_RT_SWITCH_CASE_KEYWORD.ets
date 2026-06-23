/**
 * @id LEX_02_07_100_RT_SWITCH_CASE_KEYWORD
 * @expect runtime
 * @section 2.7
 * @design switch-case 关键字运行时验证
 * @note runtime 用例：验证 switch-case 关键字的运行时行为
 */

function main(): void {
  // switch-case 关键字
  let x = 1
  let result = 0
  
  switch (x) {
    case 1:
      result = 10
      break
    case 2:
      result = 20
      break
    default:
      result = 0
      break
  }
  
  if (result !== 10) { throw new Error("switch-case failed, got " + result) }
}
