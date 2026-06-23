/**
 * @id LEX_02_09_06_011_FAIL_INVALID_HEX_ESCAPE
 * @expect compile-fail
 * @section 2.9.6
 * @design 无效十六进制转义
 * @note compile-fail 用例：验证编译器拒绝无效十六进制转义
 */

// 无效十六进制转义，编译失败
let s: string = "\xGG"
