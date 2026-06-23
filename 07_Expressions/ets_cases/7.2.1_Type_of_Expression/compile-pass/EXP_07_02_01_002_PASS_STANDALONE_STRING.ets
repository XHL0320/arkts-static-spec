/**
 * @id EXP_07_02_01_002_PASS_STANDALONE_STRING
 * @expect compile-pass
 * @section 7.2.1
 * @design standalone 字符串字面量类型推断为 string，`let a = "hello"`
 * @note 正向用例：验证 standalone 字符串字面量类型推断
 */
function testStandaloneString(): void {
  let a = "hello"
  let b = ""
  let c = "42"
}
