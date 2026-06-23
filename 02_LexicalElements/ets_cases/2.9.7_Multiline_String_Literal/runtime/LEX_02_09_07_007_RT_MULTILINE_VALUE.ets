/**
 * @id LEX_02_09_07_007_RT_MULTILINE_VALUE
 * @expect runtime
 * @section 2.9.7
 * @design 多行字符串值验证
 * @note runtime 用例：验证多行字符串的值
 */

function main(): void {
  // 验证简单多行字符串
  let s1 = `Hello`
  if (s1 !== "Hello") { throw new Error("simple multiline failed, got " + s1) }

  // 验证包含换行的多行字符串
  let s2 = `Line 1
Line 2`
  let expected = "Line 1\nLine 2"
  if (s2 !== expected) { throw new Error("multiline with newline failed, got " + s2) }

  // 验证空多行字符串
  let s3 = ``
  if (s3 !== "") { throw new Error("empty multiline failed, got " + s3) }
}
