/**
 * @id EXP_07_06_01_014_FAIL_MISSING_REQUIRED_FIELD
 * @expect compile-fail
 * @section 7.6.1
 * @design 无默认值/初始化器的字段未提供：f1: Object 为引用类型无默认值也未提供值，应为编译时错误
 * @note 反向用例：验证无默认值也无初始化器的字段在对象字面量中必须提供
 */
class C {
    f1: Object
    f2: string = "hello"
}
let c: C = {f2: "hello"}
