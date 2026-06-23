/**
 * @id LEX_02_09_07_014_RT_MULTILINE_LENGTH
 * @expect runtime
 * @section 2.9.7
 * @design 多行字符串长度运行时验证
 * @note runtime 用例：验证多行字符串长度的运行时行为
 */

function main(): void {
  // 多行字符串长度
  let s1 = `Hello
World`
  // "Hello\nWorld" = 11 字符
  if (s1.length !== 11) { throw new Error("multiline length failed, got " + s1.length) }

  // 空多行字符串长度
  let s2 = ``
  if (s2.length !== 0) { throw new Error("empty multiline length failed, got " + s2.length) }

  // 单行多行字符串长度
  let s3 = `Hello`
  if (s3.length !== 5) { throw new Error("single line length failed, got " + s3.length) }

  // 带前导空格的长度
  let s4 = `  Hello  `
  if (s4.length !== 9) { throw new Error("leading spaces length failed, got " + s4.length) }
}
