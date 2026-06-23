/**
 * @id EXP_07_06_01_012_FAIL_PROTECTED_FIELD
 * @expect compile-fail
 * @section 7.6.1
 * @design 在对象字面量中使用 protected 字段：soname 是 protected 不可访问，应为编译时错误
 * @note 反向用例：验证 protected 成员字段不能在对象字面量中访问
 */
class Friend {
    name: string = ""
    protected soname: string = ""
}
let g: Friend = {name: "Alexander", soname: "Reed"}
