/**
 * @id LEX_02_07_081_FAIL_TYPE_KW_LONG
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Long 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Long: int = 1
