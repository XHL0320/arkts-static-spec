/**
 * @id LEX_02_09_09_013_PASS_NULL_SWITCH_CASE
 * @expect compile-pass
 * @section 2.9.9
 * @design null 在 switch/case 中
 * @note compile-pass 用例：验证 null 在 switch/case 中的使用
 */

// null 在 switch/case 中
let x: int | null = null

switch (x) {
  case null:
    break
  case 1:
    break
  default:
    break
}
