/**
 * @id EXP_07_06_01_016_FAIL_PRIVATE_CTOR
 * @expect compile-fail
 * @section 7.6.1
 * @design 构造器为 private：class C { private constructor() {} }，类复合上下文中不可访问，应为编译时错误
 * @note 反向用例：验证构造器必须可在类复合上下文访问
 */
class C {
    name: string = ""
    private constructor() {
    }
}
let c: C = {name: "test"}
