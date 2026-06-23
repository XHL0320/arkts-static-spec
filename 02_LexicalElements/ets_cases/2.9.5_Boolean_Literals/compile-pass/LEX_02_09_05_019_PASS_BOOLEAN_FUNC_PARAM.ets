/**
 * @id LEX_02_09_05_019_PASS_BOOLEAN_FUNC_PARAM
 * @expect compile-pass
 * @section 2.9.5
 * @design 布尔函数参数
 * @note compile-pass 用例：验证布尔作为函数参数
 */

// 布尔作为函数参数
function testBool(x: boolean): boolean {
  return x
}

function and(a: boolean, b: boolean): boolean {
  return a && b
}

function or(a: boolean, b: boolean): boolean {
  return a || b
}

function not(x: boolean): boolean {
  return !x
}

let result1 = testBool(true)
let result2 = and(true, false)
let result3 = or(true, false)
let result4 = not(true)
