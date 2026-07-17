/**
 * @id LEX_02_07_080_FAIL_TYPE_KW_SHORT
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Short 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Short: int = 1
