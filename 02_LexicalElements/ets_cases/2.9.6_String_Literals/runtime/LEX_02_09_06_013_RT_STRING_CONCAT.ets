/**
 * @id LEX_02_09_06_013_RT_STRING_CONCAT
 * @expect runtime
 * @section 2.9.6
 * @design 字符串拼接验证
 * @note runtime 用例：验证字符串拼接正确性
 */

function main(): void {
  // 验证字符串拼接
  let s1: string = "Hello"
  let s2: string = " World"
  let s3: string = s1 + s2
  if (s3 !== "Hello World") { throw new Error("string concat failed, got " + s3) }

  // 验证空字符串拼接
  let s4: string = ""
  let s5: string = "test"
  let s6: string = s4 + s5
  if (s6 !== "test") { throw new Error("empty string concat failed, got " + s6) }

  // 验证多字符串拼接
  let s7: string = "a" + "b" + "c"
  if (s7 !== "abc") { throw new Error("multi concat failed, got " + s7) }
}
