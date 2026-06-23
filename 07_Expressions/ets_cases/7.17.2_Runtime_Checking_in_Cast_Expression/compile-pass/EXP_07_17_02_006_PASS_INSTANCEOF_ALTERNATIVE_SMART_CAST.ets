/**
 * @id EXP_07_17_02_006_PASS_INSTANCEOF_ALTERNATIVE_SMART_CAST
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证 instanceof 替代 as cast 的 smart cast 编译通过
 * @note 正向用例：instanceof 检查后直接访问字段，无需 as 转换
 */
class Person {
    name: string = ""
    constructor(name: string) {
        this.name = name
    }
}

function printName(x: Object): void {
    if (x instanceof Person) {
        console.log(x.name)
    }
}
