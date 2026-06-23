/**
 * @id LEX_02_07_091_PASS_DO_WHILE_KEYWORD
 * @expect compile-pass
 * @section 2.7
 * @design do-while 关键字
 * @note compile-pass 用例：验证 do-while 关键字
 */

// do-while 关键字
let i = 0
do {
  let x = i
  i++
} while (i < 10)
