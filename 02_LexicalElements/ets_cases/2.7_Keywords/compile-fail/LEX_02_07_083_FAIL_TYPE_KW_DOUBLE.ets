/**
 * @id LEX_02_07_083_FAIL_TYPE_KW_DOUBLE
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Double 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Double: int = 1
