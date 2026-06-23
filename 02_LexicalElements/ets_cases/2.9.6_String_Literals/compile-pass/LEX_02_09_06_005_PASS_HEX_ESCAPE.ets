/**
 * @id LEX_02_09_06_005_PASS_HEX_ESCAPE
 * @expect compile-pass
 * @section 2.9.6
 * @design 十六进制转义
 * @note compile-pass 用例：验证十六进制转义语法
 */

// 十六进制转义
let s1: string = "\x41"  // 'A'
let s2: string = "\x61"  // 'a'
let s3: string = "\x30"  // '0'
let s4: string = "\x0A"  // 换行符
let s5: string = "\xFF"  // 255
