/**
 * @id LEX_02_01_021_FAIL_KEYWORD_AS_IDENTIFIER
 * @expect compile-fail
 * @section 2.1
 * @design ArkTS硬关键字不能作为标识符，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testKeywordAsIdentifier(): void {
  let class: number = 1
}
