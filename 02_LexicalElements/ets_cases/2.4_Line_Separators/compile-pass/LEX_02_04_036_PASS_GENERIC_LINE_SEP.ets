/**
 * @id LEX_02_04_036_PASS_GENERIC_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design 泛型内换行
 * @note compile-pass 用例：验证泛型中的换行符
 */

// 泛型内换行
let arr1: Array<
  int
> = [1, 2, 3]

// 嵌套泛型换行
let arr2: Array<
  Array<
    int
  >
> = [[1, 2], [3, 4]]

// 函数泛型换行
function identity<
  T
>(x: T): T {
  return x
}
