/**
 * @id LEX_02_04_035_PASS_TYPE_ANNOTATION_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design 类型注解内换行
 * @note compile-pass 用例：验证类型注解中的换行符
 */

// 类型注解内换行
let x:
  int = 1

let y:
  string = "hello"

// 函数返回类型换行
function add(
  a: int,
  b: int
): int {
  return a + b
}
