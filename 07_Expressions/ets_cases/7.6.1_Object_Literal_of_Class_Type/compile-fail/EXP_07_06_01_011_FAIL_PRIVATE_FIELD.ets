/**
 * @id EXP_07_06_01_011_FAIL_PRIVATE_FIELD
 * @expect compile-fail
 * @section 7.6.1
 * @design 在对象字面量中使用 private 字段：nick 是 private 不可访问，应为编译时错误
 * @note 反向用例：验证 private 成员字段不能在对象字面量中访问
 */
class Friend {
    name: string = ""
    private nick: string = ""
}
let f: Friend = {name: "Alexander", nick: "Alex"}
