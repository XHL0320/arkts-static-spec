/**
 * @id LEX_02_03_040_PASS_TYPE_ANNOTATION_WS
 * @expect compile-pass
 * @section 2.3
 * @design 类型注解周围空白
 * @note compile-pass 用例：验证类型注解周围的空白
 */

// 类型注解周围空白
let x1: int = 1
let x2 : int = 2
let x3:int = 3
let x4 :int = 4
let x5:  int = 5

// 函数参数类型注解
function add(a: int, b: int): int {
  return a + b
}

function add2(a : int, b : int) : int {
  return a + b
}
