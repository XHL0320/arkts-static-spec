/**
 * @id LEX_02_09_07_008_RT_ESCAPE_VALUE
 * @expect runtime
 * @section 2.9.7
 * @design 转义序列值验证
 * @note runtime 用例：验证多行字符串中转义序列的值
 */

function main(): void {
  // 验证转义反引号
  let s1 = `This is a \` backtick`
  if (s1 !== "This is a ` backtick") { throw new Error("escaped backtick failed, got " + s1) }

  // 验证转义反斜杠
  let s2 = `This is a \\ backslash`
  if (s2 !== "This is a \\ backslash") { throw new Error("escaped backslash failed, got " + s2) }

  // 验证制表符转义
  let s3 = `Tab:\t`
  if (s3 !== "Tab:\t") { throw new Error("tab escape failed, got " + s3) }

  // 验证换行符转义
  let s4 = `Newline:\n`
  if (s4 !== "Newline:\n") { throw new Error("newline escape failed, got " + s4) }
}
