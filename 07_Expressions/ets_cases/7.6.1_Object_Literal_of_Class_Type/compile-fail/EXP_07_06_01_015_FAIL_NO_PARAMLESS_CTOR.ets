/**
 * @id EXP_07_06_01_015_FAIL_NO_PARAMLESS_CTOR
 * @expect compile-fail
 * @section 7.6.1
 * @design 类只有带必选参数的构造器，无无参构造器：class C { constructor(p: number) {} }，对象字面量应为编译时错误
 * @note 反向用例：验证使用对象字面量的类必须有无参构造器或全可选参数构造器
 */
class C {
    name: string = ""
    constructor(p: number) {
    }
}
let c: C = {name: "test"}
