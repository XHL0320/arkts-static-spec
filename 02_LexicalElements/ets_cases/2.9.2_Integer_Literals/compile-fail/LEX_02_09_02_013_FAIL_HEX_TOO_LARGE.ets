/**
 * @id LEX_02_09_02_013_FAIL_HEX_TOO_LARGE
 * @expect compile-fail
 * @section 2.9.2
 * @design 十六进制值超出 long 范围
 * @note compile-fail 用例：验证编译器拒绝超出范围的十六进制值
 */

// 十六进制值超出 long 范围，编译失败
const err2 = 0x8000_0000_0000_0000
