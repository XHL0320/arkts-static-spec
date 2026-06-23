/**
 * @id LEX_02_09_06_023_RT_NULL_ESCAPE_VALUE
 * @expect runtime
 * @section 2.9.6
 * @design 空字符转义值验证
 * @note runtime 用例：验证 \0 空字符的值
 */

function main(): void {
  // 验证空字符转义值
  let s1: string = "\0"
  if (s1.length !== 1) { throw new Error("\\0 length failed, got " + s1.length) }

  // 验证空字符与其他字符组合
  let s2: string = "Hello\0World"
  if (s2.length !== 11) { throw new Error("Hello\\0World length failed, got " + s2.length) }

  // 验证空字符字符串比较
  let s3: string = "\0"
  let s4: string = "\0"
  if (s3 !== s4) { throw new Error("\\0 equality failed") }

  // 验证空字符与空字符串不同
  let s5: string = "\0"
  let s6: string = ""
  if (s5 === s6) { throw new Error("\\0 vs empty failed") }
}
