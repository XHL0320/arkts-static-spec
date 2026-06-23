/**
 * @id EXP_07_06_02_025_RUNTIME_OPTIONAL_UNDEFINED
 * @expect runtime
 * @section 7.6.2
 * @design 验证可跳过可选属性的值为 undefined
 * @note 运行时用例：验证可选属性在对象字面量中跳过后的值为 undefined
 */
interface Person {
    name: string
    age: number
    sex?: string
}

function main(): void {
    let b: Person = {name: "Bob", age: 25}
    if (b.sex != undefined) {
        throw new Error("assertion failed: sex should be undefined")
    }
    console.log("verified")
}
