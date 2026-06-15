/**
 * @id LEX_02_01_017_FAIL_CHAR_REGULAR_STRING
 * @expect compile-fail
 * @section 2.1
 * @design char类型使用普通字符串字面量'A'而非c'A'，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testCharRegularString(): void {
  let ch: char = 'A'
}
