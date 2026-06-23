/**
 * @id EXP_07_06_01_006_PASS_EXPLICIT_PARAMLESS_CTOR
 * @expect compile-pass
 * @section 7.6.1
 * @design 显式无参构造器：class C { constructor() {} } 有显式无参构造器，对象字面量合法
 * @note 正向用例：验证显式无参构造器可用
 */
class C {
    name: string = ""
    constructor() {
    }
}
let c: C = {name: "test"}
