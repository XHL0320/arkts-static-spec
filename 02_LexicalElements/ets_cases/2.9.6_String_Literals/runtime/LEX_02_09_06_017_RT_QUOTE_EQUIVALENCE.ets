/**
 * @id LEX_02_09_06_017_RT_QUOTE_EQUIVALENCE
 * @expect runtime
 * @section 2.9.6
 * @design 单引号双引号等价验证
 * @note runtime 用例：验证单引号和双引号字符串等价
 */

function main(): void {
  // 验证单引号和双引号字符串等价
  let s1: string = "Hello"
  let s2: string = 'Hello'
  if (s1 !== s2) { throw new Error("quote equivalence failed") }

  // 验证空字符串等价
  let s3: string = ""
  let s4: string = ''
  if (s3 !== s4) { throw new Error("empty quote equivalence failed") }

  // 验证包含引号的字符串
  let s5: string = "don't worry"
  let s6: string = 'don\'t worry'
  if (s5 !== s6) { throw new Error("escaped quote equivalence failed") }
}
