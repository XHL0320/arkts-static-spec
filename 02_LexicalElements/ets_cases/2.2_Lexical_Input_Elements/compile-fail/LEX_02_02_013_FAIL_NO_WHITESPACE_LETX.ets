/**
 * @id LEX_02_02_013_FAIL_NO_WHITESPACE_LETX
 * @expect compile-fail
 * @section 2.2
 * @design 无空白符导致let和x合并为一个标识符letx，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testNoWhitespaceLetx(): void {
  letx: number = 1
}
