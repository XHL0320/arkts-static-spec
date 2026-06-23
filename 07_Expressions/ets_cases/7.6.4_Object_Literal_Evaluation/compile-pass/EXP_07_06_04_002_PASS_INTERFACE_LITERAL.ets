/**
 * @id EXP_07_06_04_002_PASS_INTERFACE_LITERAL
 * @expect compile-pass
 * @section 7.6.4
 * @design 接口类型对象字面量编译通过：接口类型推断创建匿名类对象字面量，验证构造器可被调用
 * @note 正向用例：验证接口类型对象字面量编译通过
 */
interface Info {
    name: string
    age: number
}
let x: Info = {name: "test", age: 10}
