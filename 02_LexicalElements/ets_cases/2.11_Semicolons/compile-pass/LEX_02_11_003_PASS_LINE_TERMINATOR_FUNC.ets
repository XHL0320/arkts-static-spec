/**
 * @id LEX_02_11_003_PASS_LINE_TERMINATOR_FUNC
 * @expect compile-pass
 * @section 2.11
 * @design 函数声明由行分隔符终止
 * @note compile-pass 用例：验证函数声明由行分隔符终止
 */

// 函数声明由行分隔符终止
function add(x: int, y: int): int {
  return x + y
}

let result: int = add(1, 2)
