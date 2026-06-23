/**
 * @id LEX_02_09_08_003_PASS_UNDEFINED_USAGE
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 使用场景
 * @note compile-pass 用例：验证 undefined 使用场景
 */

// 变量赋值
let x1: undefined = undefined

// 函数返回值
function getUndefined(): undefined {
  return undefined
}

// 条件表达式
let x2 = (x1 === undefined) ? 1 : 0
