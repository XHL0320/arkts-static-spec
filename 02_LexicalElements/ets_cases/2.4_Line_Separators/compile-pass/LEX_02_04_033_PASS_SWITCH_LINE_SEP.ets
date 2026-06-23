/**
 * @id LEX_02_04_033_PASS_SWITCH_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design switch 语句内换行
 * @note compile-pass 用例：验证 switch 语句中的换行符
 */

// switch 语句内换行
let x: int = 1
let result: int = 0

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
