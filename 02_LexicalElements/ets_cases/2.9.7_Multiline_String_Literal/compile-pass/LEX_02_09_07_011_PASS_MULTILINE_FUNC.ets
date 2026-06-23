/**
 * @id LEX_02_09_07_011_PASS_MULTILINE_FUNC
 * @expect compile-pass
 * @section 2.9.7
 * @design 多行字符串在函数中
 * @note compile-pass 用例：验证多行字符串在函数中的使用
 */

// 多行字符串作为函数参数
function printMultiline(s: string): void {
  let x = s
}

let s1 = `Hello
World`
printMultiline(s1)

// 多行字符串作为返回值
function getMultiline(): string {
  return `Line 1
Line 2`
}

let s2 = getMultiline()
