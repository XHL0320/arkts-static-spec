/**
 * @id EXP_07_17_02_015_RUNTIME_INSTANCEOF_FALSE_AS_ERROR
 * @expect runtime
 * @runtime-throws=ClassCastError
 * @section 7.17.2
 * @design 验证 instanceof false 后 as cast 抛出 ClassCastError
 * @note 运行时用例：instanceof 返回 false (string 非 Person) 后 as Person 应抛 ClassCastError
 */
class Person {
    name: string = ""
}

function main(): void {
    let x: Object = "hello"
    if (!(x instanceof Person)) {
        let p: Person = x as Person
    }
}
