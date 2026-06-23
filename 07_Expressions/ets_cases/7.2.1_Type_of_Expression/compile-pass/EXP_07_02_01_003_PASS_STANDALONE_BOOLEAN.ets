/**
 * @id EXP_07_02_01_003_PASS_STANDALONE_BOOLEAN
 * @expect compile-pass
 * @section 7.2.1
 * @design standalone 布尔字面量类型推断为 boolean，`let a = true`
 * @note 正向用例：验证 standalone 布尔字面量类型推断
 */
function testStandaloneBoolean(): void {
  let a = true
  let b = false
}
