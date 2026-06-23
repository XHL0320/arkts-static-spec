/**
 * @id EXP_07_02_01_001_PASS_STANDALONE_INT
 * @expect compile-pass
 * @section 7.2.1
 * @design standalone 数字字面量类型推断为 int，`let a = 42`
 * @note 正向用例：验证 standalone 表达式数字字面量可自推断类型
 */
function testStandaloneInt(): void {
  let a = 42
  let b = -17
  let c = 0
}
