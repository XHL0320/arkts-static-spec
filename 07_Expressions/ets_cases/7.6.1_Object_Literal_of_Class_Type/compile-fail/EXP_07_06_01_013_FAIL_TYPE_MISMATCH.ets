/**
 * @id EXP_07_06_01_013_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.6.1
 * @design 字段表达式类型不可赋值给字段类型：{name: 123} 中 number 不可赋值给 string，应为编译时错误
 * @note 反向用例：验证字段表达式类型必须可赋值给字段类型
 */
class Friend {
    name: string = ""
}
let f: Friend = {name: 123}
