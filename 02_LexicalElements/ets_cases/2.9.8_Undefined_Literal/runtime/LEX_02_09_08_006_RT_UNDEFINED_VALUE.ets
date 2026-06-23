/**
 * @id LEX_02_09_08_006_RT_UNDEFINED_VALUE
 * @expect runtime
 * @section 2.9.8
 * @design undefined 值验证
 * @note runtime 用例：验证 undefined 值的运行时行为
 */

function test(): void {
  return undefined
}

function main(): void {
  // undefined 值
  let x1: undefined = undefined
  if (x1 !== undefined) { throw new Error("undefined failed, got " + x1) }

  // void 函数返回 undefined
  let x2 = test()
  if (x2 !== undefined) { throw new Error("void function failed") }

  // undefined 赋值
  let x3: undefined = undefined
  if (x3 !== undefined) { throw new Error("assignment failed") }
}
