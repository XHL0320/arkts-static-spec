/**
 * @id EXP2_17_01_01_009_FAIL_INVALID_ESCAPE
 * @expect compile-fail
 * @section 17.1.1
 * @design 非法转义序列 c'\q' 应产生编译时错误（spec: char 字面量只支持有效的转义序列）
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求非法转义序列报错，实现允许 c'\q' 编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
function testInvalidEscapeFail(): void {
  let invalid: char = c'\q'
  console.log(invalid)
}
