/**
 * @id LEX_02_09_07_009_RT_LEADING_SPACES
 * @expect runtime
 * @section 2.9.7
 * @design 前导空格保留验证
 * @note runtime 用例：验证前导空格被保留
 */

function main(): void {
  // 验证前导空格保留
  let s1 = `  Two spaces`
  if (s1 !== "  Two spaces") { throw new Error("two spaces failed, got '" + s1 + "'") }

  let s2 = `    Four spaces`
  if (s2 !== "    Four spaces") { throw new Error("four spaces failed, got '" + s2 + "'") }

  // 验证多行中的前导空格
  let s3 = `  Line 1
  Line 2`
  let expected = "  Line 1\n  Line 2"
  if (s3 !== expected) { throw new Error("multiline leading spaces failed, got '" + s3 + "'") }
}
