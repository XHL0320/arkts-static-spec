/**
 * @id LEX_02_07_089_PASS_OF_KEYWORD
 * @expect compile-pass
 * @section 2.7
 * @design of 关键字
 * @note compile-pass 用例：验证 of 关键字
 */

// of 关键字 - for-of 循环
let arr = [1, 2, 3]
for (let item of arr) {
  let x = item
}
