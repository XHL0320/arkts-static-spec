/**
 * @id LEX_02_03_030_FAIL_CHAR_PREFIX_SPACE
 * @expect compile-fail
 * @section 2.3
 * @design char字面量 c'A' 中 c 与 ' 之间含 Space 应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testCharPrefixSpace(): void {
  let ch: char = c 'A'
}
