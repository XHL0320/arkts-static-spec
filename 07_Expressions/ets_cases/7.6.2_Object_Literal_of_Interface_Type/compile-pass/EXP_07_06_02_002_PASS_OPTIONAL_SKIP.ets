/**
 * @id EXP_07_06_02_002_PASS_OPTIONAL_SKIP
 * @expect compile-pass
 * @section 7.6.2
 * @design 可选属性可跳过：sex?: "male"|"female" 在对象字面量中跳过，值设为 undefined
 * @note 正向用例：验证可选属性跳过规则
 */
interface Person {
    name: string
    age: number
    sex?: string
}
let b: Person = {name: "Bob", age: 25}
