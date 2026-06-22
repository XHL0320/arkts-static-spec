/**
 * @id EXP_07_34_001_PASS_INTERPOLATION_BASIC
 * @expect compile-pass
 * @section 7.34
 * @design 基本字符串插值 \
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testInterpolationBasic(): void {
  let name: string = "ArkTS"; let version: int = 5
  let msg: string = `Hello, ${name}! Version ${version}`
  console.log(msg)
}
