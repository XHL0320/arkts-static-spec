/**
 * @id LEX_02_09_08_020_RT_UNDEFINED_NULLISH_COAL
 * @expect runtime
 * @section 2.9.8
 * @design undefined 在空值合并中
 * @note runtime 用例：验证 undefined 在空值合并中的运行时行为
 */

function main(): void {
  // undefined 在空值合并中
  let x1: int | undefined = undefined
  let r1 = x1 ?? 42
  if (r1 !== 42) {
    throw new Error("nullish coalescing failed, got " + r1)
  }

  let x2: int | undefined = 10
  let r2 = x2 ?? 42
  if (r2 !== 10) {
    throw new Error("nullish coalescing failed, got " + r2)
  }
}
