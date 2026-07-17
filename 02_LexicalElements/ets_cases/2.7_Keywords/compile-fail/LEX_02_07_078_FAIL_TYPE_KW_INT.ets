/**
 * @id LEX_02_07_078_FAIL_TYPE_KW_INT
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Int 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Int: int = 1
