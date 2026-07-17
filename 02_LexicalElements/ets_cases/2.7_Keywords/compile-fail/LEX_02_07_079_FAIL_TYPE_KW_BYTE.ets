/**
 * @id LEX_02_07_079_FAIL_TYPE_KW_BYTE
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Byte 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Byte: int = 1
