/**
 * @id LEX_02_09_02_017_FAIL_TRAILING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.2
 * @design 整数下划线不能在末尾（123_）
 * @note compile-fail 用例：验证下划线不能作为整数最后一个字符
 */
let x: int = 123_
