/**
 * @id LEX_02_07_090_FAIL_TYPE_KW_OBJECT
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 object 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let object: int = 1
