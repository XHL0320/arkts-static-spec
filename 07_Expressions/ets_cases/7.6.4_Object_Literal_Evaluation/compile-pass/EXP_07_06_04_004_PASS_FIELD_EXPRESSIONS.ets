/**
 * @id EXP_07_06_04_004_PASS_FIELD_EXPRESSIONS
 * @expect compile-pass
 * @section 7.6.4
 * @design 字段含表达式的对象字面量编译通过：字段值为函数调用和算术表达式，验证表达式求值可正常编译
 * @note 正向用例：验证字段值为表达式的对象字面量编译通过
 */
class Data {
    sum: number = 0
    product: number = 0
    greeting: string = ""
}
function add(x: number, y: number): number {
    return x + y
}
function makeGreeting(name: string): string {
    return "Hello, " + name
}
let d: Data = {sum: add(1, 2), product: 3 * 4, greeting: makeGreeting("World")}
