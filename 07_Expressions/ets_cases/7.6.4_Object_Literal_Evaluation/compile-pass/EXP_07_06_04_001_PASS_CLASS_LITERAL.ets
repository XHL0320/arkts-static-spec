/**
 * @id EXP_07_06_04_001_PASS_CLASS_LITERAL
 * @expect compile-pass
 * @section 7.6.4
 * @design 命名类类型对象字面量编译通过：最基本的类上下文对象字面量，验证构造器可被调用且字段编译通过
 * @note 正向用例：验证类类型对象字面量编译通过的基本情况
 */
class Info {
    name: string = ""
    age: number = 0
}
let x: Info = {name: "test", age: 10}
