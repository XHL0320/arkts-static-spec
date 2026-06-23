/**
 * @id LEX_02_09_06_015_RT_STRING_LENGTH
 * @expect runtime
 * @section 2.9.6
 * @design 字符串长度验证
 * @note runtime 用例：验证字符串长度
 */

function main(): void {
  // 验证空字符串长度
  let s1: string = ""
  if (s1.length !== 0) { throw new Error("empty string length failed, got " + s1.length) }

  // 验证普通字符串长度
  let s2: string = "Hello"
  if (s2.length !== 5) { throw new Error("Hello length failed, got " + s2.length) }

  // 验证转义字符长度
  let s3: string = "\n"
  if (s3.length !== 1) { throw new Error("\\n length failed, got " + s3.length) }

  // 验证 Unicode 字符长度
  let s4: string = "\u{4e16}"
  if (s4.length !== 1) { throw new Error("unicode length failed, got " + s4.length) }
}
