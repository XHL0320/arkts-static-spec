/**
 * @id LEX_02_07_085_FAIL_TYPE_KW_NUMBER
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 Number 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let Number: int = 1
