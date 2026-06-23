/**
 * @id LEX_02_09_02_017_RT_UNDERSCORE_VALUE
 * @expect runtime
 * @section 2.9.2
 * @design 下划线不影响值验证
 * @note runtime 用例：验证下划线分隔符不影响数值
 */

function main(): void {
  // 验证下划线不影响值
  let withUnderscore: int = 1_000_000
  let withoutUnderscore: int = 1000000

  if (withUnderscore !== withoutUnderscore) { throw new Error("underscore value mismatch") }

  let hexUnderscore: int = 0xBAD_3
  let hexNoUnderscore: int = 0xBAD3

  if (hexUnderscore !== hexNoUnderscore) { throw new Error("hex underscore mismatch") }
}
