/**
 * @id EXP_07_06_01_019_RUNTIME_BASIC_VALUES
 * @expect runtime
 * @section 7.6.1
 * @design 对象字面量运行时字段值验证：创建 Person 实例并通过对象字面量设置 name 和 age，验证值正确
 * @note 运行时用例：验证对象字面量创建的实例字段值正确
 */
class Person {
    name: string = ""
    age: number = 0
}

function main(): void {
    let p: Person = {name: "Bob", age: 25}
    if (p.name != "Bob") {
        throw new Error("assertion failed: name != Bob, got " + p.name)
    }
    if (p.age != 25) {
        throw new Error("assertion failed: age != 25, got " + p.age)
    }
    console.log("verified")
}
