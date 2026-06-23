/**
 * @id EXP_07_02_01_004_PASS_STANDALONE_ARRAY
 * @expect compile-pass
 * @section 7.2.1
 * @design standalone 数组字面量可从元素推断类型，`let a = [1, 2, 3]`
 * @note 正向用例：验证 standalone 数组字面量类型推断
 */
function testStandaloneArray(): void {
  let a = [1, 2, 3]
  let b = ["x", "y"]
  let c = [true, false]
}
