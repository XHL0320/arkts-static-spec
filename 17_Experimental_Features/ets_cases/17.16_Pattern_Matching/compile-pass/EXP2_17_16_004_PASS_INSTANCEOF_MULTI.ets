/**
 * @id EXP2_17_16_004_PASS_INSTANCEOF_MULTI
 * @expect compile-pass
 * @section 17.16
 * @design 多个 instanceof 检查组合使用——验证在多种类型间进行识别
 * @note 正向用例：验证连续 instanceof 检查编译通过，含 null 检查兼容
 */
function testInstanceofMulti(): void {
  let val: Object = "test"
  let checks: int = 0
  if (val instanceof String) { checks++ }
  if (val instanceof Number) { checks++ }
  if (val instanceof Object) { checks++ }
  console.log("checks passed: " + checks)
}
