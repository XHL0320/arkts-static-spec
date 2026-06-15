/**
 * @id LEX_02_06_025_FAIL_OPERATOR_START
 * @expect compile-fail
 * @section 2.6
 * @design 标识符不能以运算符字符开头
 * @note 反向用例：-foo 不是合法标识符
 */
function testOperatorStart(): void {
  let -foo: int = 1
}
