/**
 * @id LEX_02_09_06_026_PASS_STRING_CONDITIONAL
 * @expect compile-pass
 * @section 2.9.6
 * @design 字符串条件表达式
 * @note compile-pass 用例：验证字符串在条件表达式中的使用
 */

// 字符串在条件表达式中
let s1 = "Hello"
let s2 = ""

if (s1.length > 0) {
  let x = 1
}

if (s2.length === 0) {
  let y = 2
}

// 字符串比较
let s3 = "Hello"
if (s1 === s3) {
  let z = 3
}
