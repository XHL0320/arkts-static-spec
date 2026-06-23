/**
 * @id EXP2_17_06_004_PASS_FOR_OF_STRING_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 字符串类型是内置可迭代类型，可直接用于 for-of 语句，编译器应通过
 * @note 正向用例：验证字符串内置可迭代类型编译通过
 */
function testStringIterable(): void {
  let s: string = "hello"
  let result: string = ""
  for (let ch of s) {
    result = result + ch
  }
}
