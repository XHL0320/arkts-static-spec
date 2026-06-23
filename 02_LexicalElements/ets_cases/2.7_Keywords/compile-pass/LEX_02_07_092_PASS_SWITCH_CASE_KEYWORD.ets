/**
 * @id LEX_02_07_092_PASS_SWITCH_CASE_KEYWORD
 * @expect compile-pass
 * @section 2.7
 * @design switch-case 关键字
 * @note compile-pass 用例：验证 switch-case 关键字
 */

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
