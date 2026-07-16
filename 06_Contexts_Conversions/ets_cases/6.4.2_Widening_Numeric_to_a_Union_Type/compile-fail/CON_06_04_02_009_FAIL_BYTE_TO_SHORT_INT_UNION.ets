/**
 * @id CON_06_04_02_009_FAIL_BYTE_TO_SHORT_INT_UNION
 * @expect compile-fail
 * @section 6.4.2
 * @design byte→short|int有多个更大类型应报错
 * @note spec: need single larger type in union
 */
let x: short | int = 1 as byte
