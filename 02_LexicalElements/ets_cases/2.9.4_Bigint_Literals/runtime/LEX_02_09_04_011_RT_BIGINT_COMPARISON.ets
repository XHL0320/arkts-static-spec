/**
 * @id LEX_02_09_04_011_RT_BIGINT_COMPARISON
 * @expect runtime
 * @section 2.9.4
 * @design bigint 比较验证
 * @note runtime 用例：验证 bigint 比较正确性
 */

function main(): void {
  // 验证 bigint 比较
  let a: bigint = 153n
  let b: bigint = 153n
  let c: bigint = 200n

  if (a !== b) { throw new Error("bigint equality failed") }
  if (a === c) { throw new Error("bigint inequality failed") }
  if (!(a < c)) { throw new Error("bigint less than failed") }
  if (!(c > a)) { throw new Error("bigint greater than failed") }
}
