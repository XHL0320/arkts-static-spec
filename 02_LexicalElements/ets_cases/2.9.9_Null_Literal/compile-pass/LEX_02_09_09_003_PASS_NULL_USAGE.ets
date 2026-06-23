/**
 * @id LEX_02_09_09_003_PASS_NULL_USAGE
 * @expect compile-pass
 * @section 2.9.9
 * @design null 使用场景
 * @note compile-pass 用例：验证 null 使用场景
 */

// 变量赋值
let x1: null = null

// 函数返回值
function getNull(): null {
  return null
}

// 条件表达式
let x2 = (x1 === null) ? 1 : 0
