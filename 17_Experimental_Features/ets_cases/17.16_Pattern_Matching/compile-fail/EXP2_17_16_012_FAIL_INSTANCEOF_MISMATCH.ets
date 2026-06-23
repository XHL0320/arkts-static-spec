/**
 * @id EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH
 * @expect compile-fail
 * @section 17.16
 * @design instanceof 检查互不兼容的类型——编译期可确定永远为 false
 * @note 反向用例：spec 期望模式匹配中对不兼容类型产生编译错误。
 *       ArkTS 实测：仅产生 W1001506 警告（编译期已知 instanceof 结果），
 *       但编译仍然通过，不产生 Syntax error 或 Semantic error。
 *       ⚠️ SPEC 不一致：spec 要求对不兼容/不可能的类型检查产生编译错误，
 *       但 ArkTS 实现仅警告不拒绝。分类：D 类（Spec 与实现不一致）
 */
function testInstanceofMismatch(): void {
  let val: Object = 42
  if (val instanceof String && val instanceof int) {
    console.log("never reached")
  }
}
