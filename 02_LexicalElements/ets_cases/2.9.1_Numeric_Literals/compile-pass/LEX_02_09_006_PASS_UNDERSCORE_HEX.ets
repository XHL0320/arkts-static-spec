/**
 * @id LEX_02_09_006_PASS_UNDERSCORE_HEX
 * @expect compile-pass
 * @section 2.9.1
 * @design 十六进制带下划线分隔符
 * @note compile-pass 用例：验证十六进制下划线分隔符语法
 */

// 十六进制带下划线
let x1: int = 0xFF_FF
let x2: int = 0x7F_FF_FF_FF
