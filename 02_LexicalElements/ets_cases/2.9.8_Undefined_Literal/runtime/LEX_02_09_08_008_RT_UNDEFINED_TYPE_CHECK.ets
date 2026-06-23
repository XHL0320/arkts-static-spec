/**
 * @id LEX_02_09_08_008_RT_UNDEFINED_TYPE_CHECK
 * @expect runtime
 * @section 2.9.8
 * @design undefined 类型检查
 * @note runtime 用例：验证 undefined 类型检查的运行时行为
 */

function test(): void {
  return undefined
}

function main(): void {
  // undefined 类型检查
  let x1: undefined = undefined
  
  if (typeof x1 !== "undefined") {
    throw new Error("typeof undefined failed, got " + typeof x1)
  }

  // void 类型检查
  let x2 = test()
  if (typeof x2 !== "undefined") {
    throw new Error("typeof void failed, got " + typeof x2)
  }

  // undefined 与未定义变量
  let x3: int | undefined = undefined
  if (x3 !== undefined) { throw new Error("optional undefined failed") }
}
