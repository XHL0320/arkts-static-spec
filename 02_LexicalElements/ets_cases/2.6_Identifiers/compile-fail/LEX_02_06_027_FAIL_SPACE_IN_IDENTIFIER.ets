/**
 * @id LEX_02_06_027_FAIL_SPACE_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.6
 * @design 标识符内含空格不合法
 * @note 反向用例：my var 被解析为两个 Token
 */
function testSpaceInIdentifier(): void {
  let my var: int = 1
}
