/**
 * @id EXP_07_09_010_RUNTIME_THIS_IN_CTOR
 * @expect runtime
 * @section 7.9
 * @design 构造器中 this 运行时验证：构造器通过 this.field 初始化字段
 * @note 运行时用例：验证构造器中 this 正确引用正在构造的对象
 */
class MyClass {
    name: string = ""
    age: int = 0
    constructor(name: string, age: int) {
        this.name = name
        this.age = age
    }
}

function main(): void {
    let p: MyClass = new MyClass("Alice", 30)
    if (p.name != "Alice") {
        throw new Error("assertion failed: name != Alice")
    }
    if (p.age != 30) {
        throw new Error("assertion failed: age != 30")
    }
    console.log("verified")
}
