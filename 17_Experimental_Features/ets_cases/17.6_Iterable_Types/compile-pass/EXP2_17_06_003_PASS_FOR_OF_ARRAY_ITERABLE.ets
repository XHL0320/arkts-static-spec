/**
 * @id EXP2_17_06_003_PASS_FOR_OF_ARRAY_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 数组类型（T[]）是内置可迭代类型，可直接用于 for-of 语句，编译器应通过
 * @note 正向用例：验证数组内置可迭代类型编译通过
 */
function testArrayIterable(): void {
  let arr: int[] = [1, 2, 3]
  let sum: int = 0
  for (let x of arr) {
    sum = sum + x
  }
}
