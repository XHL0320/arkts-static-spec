/**
 * @id EXP_07_06_01_001_PASS_VAR_TYPE_CONTEXT
 * @expect compile-pass
 * @section 7.6.1
 * @design 变量类型提供上下文：let p: Person = {name: "Bob", age: 25} 中 Person 类型从变量声明推断
 * @note 正向用例：验证变量类型上下文推断对象字面量的类类型
 */
class Person {
    name: string = ""
    age: number = 0
}
let p: Person = {name: "Bob", age: 25}
