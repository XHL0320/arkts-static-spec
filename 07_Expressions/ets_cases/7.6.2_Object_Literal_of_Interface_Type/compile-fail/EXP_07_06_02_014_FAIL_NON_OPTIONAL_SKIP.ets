/**
 * @id EXP_07_06_02_014_FAIL_NON_OPTIONAL_SKIP
 * @expect compile-fail
 * @section 7.6.2
 * @design 非可选属性跳过：age 为非可选，即使 number 有默认值 0，跳过也应编译时错误
 * @note 反向用例：验证非可选属性在对象字面量中不可跳过
 */
interface Person {
    name: string
    age: number
}
let b: Person = {name: "Bob"}
