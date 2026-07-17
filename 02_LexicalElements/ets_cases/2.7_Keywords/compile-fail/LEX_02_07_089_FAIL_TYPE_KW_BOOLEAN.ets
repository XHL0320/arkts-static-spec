/**
 * @id LEX_02_07_089_FAIL_TYPE_KW_BOOLEAN
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Boolean 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Boolean: int = 1
