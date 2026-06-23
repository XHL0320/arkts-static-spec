/**
 * @id LEX_02_09_026_RT_UNDERSCORE_VALUE
 * @expect runtime
 * @section 2.9.1
 * @design 下划线不影响值验证
 * @note runtime 用例：验证下划线分隔符不影响数值
 */

function main(): void {
  let withUnderscore: int = 1_000_000
  let withoutUnderscore: int = 1000000

  // 验证下划线不影响值
  if (withUnderscore !== withoutUnderscore) { throw new Error("underscore value mismatch") }
}
