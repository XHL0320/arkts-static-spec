/**
 * @id LEX_02_03_023_FAIL_TAB_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.3
 * @design 标识符中含 Tab 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testTabInIdentifier(): void {
  let my	var: int = 1
}
