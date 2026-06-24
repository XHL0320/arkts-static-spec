/**
 * @id LEX_02_09_08_017_RT_UNDEFINED_FUNC_ARG
 * @expect runtime
 * @section 2.9.8
 * @design undefined 作为函数参数
 * @note runtime 用例：验证 undefined 作为函数参数的运行时行为
 */

function test(x: int | undefined): int {
  return x === undefined ? 0 : x
}

function main(): void {
  // undefined 作为函数参数
  let r1 = test(undefined)
  if (r1 !== 0) {
    throw new Error("func arg failed, got " + r1)
  }

  let r2 = test(42)
  if (r2 !== 42) {
    throw new Error("func arg failed, got " + r2)
  }
}
