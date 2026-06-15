/**
 * @id LEX_02_01_020_FAIL_DIGIT_START_IDENTIFIER
 * @expect compile-fail
 * @section 2.1
 * @design 标识符不能以数字开头，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testDigitStartIdentifier(): void {
  let 1var: number = 1
}
