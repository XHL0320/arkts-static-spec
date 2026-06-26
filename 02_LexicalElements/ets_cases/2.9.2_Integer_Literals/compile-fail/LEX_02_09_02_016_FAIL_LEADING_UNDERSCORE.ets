/**
 * @id LEX_02_09_02_016_FAIL_LEADING_UNDERSCORE
 * @expect compile-fail
 * @section 2.9.2
 * @design 整数下划线不能在开头（_123）
 * @note compile-fail 用例：验证下划线不能作为整数第一个字符
 */
let x: int = _123
