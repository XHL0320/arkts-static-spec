/**
 * @id LEX_02_09_09_020_RT_NULL_NULLISH_COAL
 * @expect runtime
 * @section 2.9.9
 * @design null 在空值合并中
 * @note runtime 用例：验证 null 在空值合并中的运行时行为
 */

function main(): void {
  // null 在空值合并中
  let x1: int | null = null
  let r1 = x1 ?? 42
  if (r1 !== 42) {
    throw new Error("nullish coalescing failed, got " + r1)
  }

  let x2: int | null = 10
  let r2 = x2 ?? 42
  if (r2 !== 10) {
    throw new Error("nullish coalescing failed, got " + r2)
  }
}
