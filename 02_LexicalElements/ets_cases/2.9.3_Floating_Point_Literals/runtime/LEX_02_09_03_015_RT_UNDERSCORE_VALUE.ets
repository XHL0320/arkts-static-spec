/**
 * @id LEX_02_09_03_015_RT_UNDERSCORE_VALUE
 * @expect runtime
 * @section 2.9.3
 * @design 下划线不影响值验证
 * @note runtime 用例：验证下划线分隔符不影响数值
 */

function main(): void {
  // 验证下划线不影响值
  let x1: double = 3.141_592
  let x2: double = 3.141592

  if (x1 !== x2) { throw new Error("underscore value mismatch") }
}
