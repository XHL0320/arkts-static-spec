/**
 * @id EXP_07_17_02_013_RUNTIME_INSTANCEOF_PREVENTS_ERROR
 * @expect runtime
 * @section 7.17.2
 * @design 验证 instanceof 守卫避免 as cast 运行时错误
 * @note 运行时用例：instanceof 检查后 as cast 安全执行
 */
class Person {
    name: string = ""
}

function main(): void {
    let x: Object = new Person()
    if (x instanceof Person) {
        let p: Person = x as Person
    }
    console.log("verified")
}
