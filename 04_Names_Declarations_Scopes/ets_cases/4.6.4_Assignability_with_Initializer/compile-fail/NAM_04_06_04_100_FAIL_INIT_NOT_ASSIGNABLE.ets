/**
 * @id NAM_04_06_04_100_FAIL_INIT_NOT_ASSIGNABLE
 * @expect compile-fail
 * @section 4.6.4
 * @design 初始化类型不可赋值
 * @note 反向用例：验证初始化表达式类型不可赋值给注解类型编译错误
 */
let s: number = "string";
