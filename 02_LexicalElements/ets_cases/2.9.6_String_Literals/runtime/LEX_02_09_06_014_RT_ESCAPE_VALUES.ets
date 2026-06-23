/**
 * @id LEX_02_09_06_014_RT_ESCAPE_VALUES
 * @expect runtime
 * @section 2.9.6
 * @design 转义序列值验证
 * @note runtime 用例：验证转义序列的值
 */

function main(): void {
  // 验证十六进制转义
  let s1: string = "\x41"
  if (s1 !== "A") { throw new Error("\\x41 failed, got " + s1) }

  // 验证 Unicode 转义
  let s2: string = "\u0041"
  if (s2 !== "A") { throw new Error("\\u0041 failed, got " + s2) }

  // 验证有界 Unicode 转义
  let s3: string = "\u{41}"
  if (s3 !== "A") { throw new Error("\\u{41} failed, got " + s3) }

  // 验证反斜杠转义
  let s4: string = "\\"
  if (s4 !== "\\") { throw new Error("\\\\ failed, got " + s4) }

  // 验证制表符转义
  let s5: string = "\t"
  if (s5 !== "\t") { throw new Error("\\t failed") }

  // 验证换行符转义
  let s6: string = "\n"
  if (s6 !== "\n") { throw new Error("\\n failed") }
}
