/**
 * @id LEX_02_07_086_FAIL_TYPE_KW_ANY
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Any 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Any: int = 1
