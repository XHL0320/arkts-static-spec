/**
 * @id EXP_07_06_01_021_RUNTIME_DEFAULT_VALUES
 * @expect runtime
 * @section 7.6.1
 * @design 默认值运行时验证：对象字面量只提供部分字段，跳过字段应使用默认值
 * @note 运行时用例：验证对象字面量中跳过的字段使用正确的默认值
 */
class Person {
    name: string = ""
    age: number = 0
    email: string = "unknown"
}

function main(): void {
    let p: Person = {name: "Bob"}
    if (p.name != "Bob") {
        throw new Error("assertion failed: name != Bob, got " + p.name)
    }
    if (p.age != 0) {
        throw new Error("assertion failed: age != 0, got " + p.age)
    }
    if (p.email != "unknown") {
        throw new Error("assertion failed: email != unknown, got " + p.email)
    }
    console.log("verified")
}
