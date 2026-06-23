/**
 * @id EXP_07_06_01_007_PASS_OPTIONAL_PARAM_CTOR
 * @expect compile-pass
 * @section 7.6.1
 * @design 可选参数构造器：class C { constructor(p?: number) {} } 所有参数为可选第二形式，对象字面量合法
 * @note 正向用例：验证全可选参数构造器的类也可用于对象字面量
 */
class C {
    name: string = ""
    constructor(p?: number) {
    }
}
let c: C = {name: "test"}
