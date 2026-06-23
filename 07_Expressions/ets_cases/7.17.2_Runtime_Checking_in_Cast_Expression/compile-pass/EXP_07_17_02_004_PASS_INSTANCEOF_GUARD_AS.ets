/**
 * @id EXP_07_17_02_004_PASS_INSTANCEOF_GUARD_AS
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证 instanceof 守卫后 as cast 编译通过
 * @note 正向用例：if (x instanceof Person) { x as Person } 安全 cast
 */
class Person {
    name: string = ""
}

function printName(x: Object): void {
    if (x instanceof Person) {
        let p = x as Person
    }
}
