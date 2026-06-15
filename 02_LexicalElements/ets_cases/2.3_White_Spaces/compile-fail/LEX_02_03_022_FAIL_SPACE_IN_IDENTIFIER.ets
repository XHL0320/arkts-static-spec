/**
 * @id LEX_02_03_022_FAIL_SPACE_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.3
 * @design 标识符中含 Space 应编译失败（空白不能出现在Token内部） * @note 反向用例：验证该场景应产生编译时错误

 */
function testSpaceInIdentifier(): void {
  let my var: int = 1
}
