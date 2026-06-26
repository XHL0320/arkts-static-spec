/**
 * @id NAM_04_02_101_FAIL_SAME_NAME_CLASS_VAR
 * @expect compile-fail
 * @section 4.2
 * @design 类和变量同名
 * @note 反向用例：验证同名类和变量编译错误
 */
class Person {}
let Person: Person;
