/**
 * @id LEX_02_07_082_FAIL_TYPE_KW_FLOAT
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Float 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Float: int = 1
