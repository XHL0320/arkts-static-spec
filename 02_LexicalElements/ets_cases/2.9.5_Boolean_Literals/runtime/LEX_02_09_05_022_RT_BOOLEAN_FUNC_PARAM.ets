/**
 * @id LEX_02_09_05_022_RT_BOOLEAN_FUNC_PARAM
 * @expect runtime
 * @section 2.9.5
 * @design 布尔函数参数运行时验证
 * @note runtime 用例：验证布尔作为函数参数的运行时行为
 */

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

function main(): void {
  // 布尔函数参数
  let result1 = testBool(true)
  if (result1 !== true) { throw new Error("testBool(true) failed, got " + result1) }

  let result2 = testBool(false)
  if (result2 !== false) { throw new Error("testBool(false) failed, got " + result2) }

  let result3 = and(true, false)
  if (result3 !== false) { throw new Error("and(true, false) failed, got " + result3) }

  let result4 = and(true, true)
  if (result4 !== true) { throw new Error("and(true, true) failed, got " + result4) }

  let result5 = or(true, false)
  if (result5 !== true) { throw new Error("or(true, false) failed, got " + result5) }

  let result6 = or(false, false)
  if (result6 !== false) { throw new Error("or(false, false) failed, got " + result6) }

  let result7 = not(true)
  if (result7 !== false) { throw new Error("not(true) failed, got " + result7) }

  let result8 = not(false)
  if (result8 !== true) { throw new Error("not(false) failed, got " + result8) }
}
