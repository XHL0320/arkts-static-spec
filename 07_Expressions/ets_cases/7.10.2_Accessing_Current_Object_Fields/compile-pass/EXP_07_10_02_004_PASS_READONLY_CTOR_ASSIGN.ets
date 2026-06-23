/**
 * @id EXP_07_10_02_004_PASS_READONLY_CTOR_ASSIGN
 * @expect compile-pass
 * @section 7.10.2
 * @design 构造器中给 readonly 实例字段赋值：构造器内允许修改 readonly 字段
 * @note 正向用例：验证 readonly 字段可在构造器中初始化赋值
 */
class Person {
    readonly id: int
    readonly name: string
    constructor(id: int, name: string) {
        this.id = id
        this.name = name
    }
}
let p: Person = new Person(1, "Alice")
