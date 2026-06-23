/**
 * @id EXP_07_06_01_005_PASS_IMPLICIT_DEFAULT_CTOR
 * @expect compile-pass
 * @section 7.6.1
 * @design 隐式默认构造器：class C {} 无显式构造器时编译器添加默认构造器，对象字面量合法
 * @note 正向用例：验证隐式默认构造器可用
 */
class C {
    name: string = ""
}
let c: C = {name: "test"}
