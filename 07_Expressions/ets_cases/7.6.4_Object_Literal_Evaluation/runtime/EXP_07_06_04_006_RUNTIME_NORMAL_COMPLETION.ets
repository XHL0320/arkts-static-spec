/**
 * @id EXP_07_06_04_006_RUNTIME_NORMAL_COMPLETION
 * @expect runtime
 * @section 7.6.4
 * @design 正常完成验证：构造器成功执行，所有字段表达式成功求值并正确赋值，验证对象字面量正常完成路径
 * @note 运行时用例：验证对象字面量正常完成的所有条件
 */
class Person {
    name: string = ""
    age: number = 0
}

function main(): void {
    let p: Person = {name: "Alice", age: 30}
    if (p.name != "Alice") {
        throw new Error("assertion failed: name != Alice")
    }
    if (p.age != 30) {
        throw new Error("assertion failed: age != 30")
    }
    console.log("verified")
}
