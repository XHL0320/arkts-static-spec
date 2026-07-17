/**
 * @id LEX_02_07_084_FAIL_TYPE_KW_CHAR
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Char 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Char: int = 1
