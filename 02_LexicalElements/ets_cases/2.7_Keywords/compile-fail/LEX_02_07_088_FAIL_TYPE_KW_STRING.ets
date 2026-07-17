/**
 * @id LEX_02_07_088_FAIL_TYPE_KW_STRING
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 String 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let String: int = 1
