/**
 * @id LEX_02_09_08_013_PASS_UNDEFINED_SWITCH_CASE
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 在 switch/case 中
 * @note compile-pass 用例：验证 undefined 在 switch/case 中的使用
 */

// undefined 在 switch/case 中
let x: int | undefined = undefined

switch (x) {
  case undefined:
    break
  case 1:
    break
  default:
    break
}
