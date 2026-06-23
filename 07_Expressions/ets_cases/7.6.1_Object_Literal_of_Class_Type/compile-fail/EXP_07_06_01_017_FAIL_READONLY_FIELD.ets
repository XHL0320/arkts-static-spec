/**
 * @id EXP_07_06_01_017_FAIL_READONLY_FIELD
 * @expect compile-fail
 * @section 7.6.1
 * @design 对象字面量显式设置 readonly 字段：field2 为 readonly，{field1: 654, field2: 3} 应为编译时错误
 * @note 反向用例：验证不能通过对象字面量显式设置 readonly 字段
 */
class C {
    field1 = 123
    readonly field2: number
    constructor() {
    }
}
let d: C = { field1: 654, field2: 3 }
