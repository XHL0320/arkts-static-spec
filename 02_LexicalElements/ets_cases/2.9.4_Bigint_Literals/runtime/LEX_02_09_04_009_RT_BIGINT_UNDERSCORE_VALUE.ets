/**
 * @id LEX_02_09_04_009_RT_BIGINT_UNDERSCORE_VALUE
 * @expect runtime
 * @section 2.9.4
 * @design 下划线不影响值验证
 * @note runtime 用例：验证下划线分隔符不影响数值
 */

function main(): void {
  // 验证下划线不影响值
  let x1: bigint = 1_000_000n
  let x2: bigint = 1000000n

  if (x1 !== x2) { throw new Error("underscore value mismatch") }
}
