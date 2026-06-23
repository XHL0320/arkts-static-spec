/**
 * @id LEX_02_04_031_PASS_CONDITIONAL_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design 条件表达式内换行
 * @note compile-pass 用例：验证条件表达式中的换行符
 */

// if 语句内换行
let x: int = 10
if (x > 5) {
  let y = x + 1
}

// if-else 语句内换行
if (x > 5) {
  let y = x + 1
} else {
  let y = x - 1
}

// 三元表达式内换行
let z = (x > 5)
  ? x + 1
  : x - 1
