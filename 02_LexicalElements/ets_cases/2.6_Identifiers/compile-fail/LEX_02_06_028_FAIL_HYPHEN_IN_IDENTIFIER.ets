/**
 * @id LEX_02_06_028_FAIL_HYPHEN_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.6
 * @design 标识符内含连字符 - 不合法（被解析为减法运算）
 * @note 反向用例：my-var 应失败
 */
function testHyphenInIdentifier(): void {
  let my-var: int = 1
}
