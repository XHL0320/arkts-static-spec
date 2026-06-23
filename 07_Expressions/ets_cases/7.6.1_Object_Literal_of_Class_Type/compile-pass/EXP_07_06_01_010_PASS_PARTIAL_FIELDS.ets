/**
 * @id EXP_07_06_01_010_PASS_PARTIAL_FIELDS
 * @expect compile-pass
 * @section 7.6.1
 * @design 部分字段提供，其余使用默认值：class Person { name: string = ""; age: number = 0; email: string = "unknown" }，{name: "Bob"} 只提供 name
 * @note 正向用例：验证对象字面量可只提供部分字段，其余字段使用默认值
 */
class Person {
    name: string = ""
    age: number = 0
    email: string = "unknown"
}
let p: Person = {name: "Bob"}
