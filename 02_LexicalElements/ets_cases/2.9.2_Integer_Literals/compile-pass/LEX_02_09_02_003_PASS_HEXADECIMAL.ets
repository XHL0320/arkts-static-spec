/**
 * @id LEX_02_09_02_003_PASS_HEXADECIMAL
 * @expect compile-pass
 * @section 2.9.2
 * @design 十六进制整数字面量
 * @note compile-pass 用例：验证十六进制整数语法
 */

// 十六进制整数
let x1: int = 0xBAD3
let x2: int = 0xBAD_3
let x3: int = 0x7F
let x4: int = 0x7FFF_FFFF  // max(int)
let x5: long = 0x8000_0000  // 超出 int 范围，推断为 long
let x6: long = 0x7FFF_FFFF_FFFF_FFFF  // max(long)
