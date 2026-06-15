/**
 * @id LEX_02_06_029_FAIL_DOT_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.6
 * @design 标识符内含点 . 不合法（被解析为成员访问）
 * @note 反向用例：my.var 应失败
 */
function testDotInIdentifier(): void {
  let my.var: int = 1
}
