/**
 * @id LEX_02_07_087_FAIL_TYPE_KW_BIGINT
 * @expect compile-fail
 * @section 2.7
 * @design 预定义类型别名 BigInt 不能用作标识符
 * @note spec: primary name and alias are both hard keywords
 */
let BigInt: int = 1
