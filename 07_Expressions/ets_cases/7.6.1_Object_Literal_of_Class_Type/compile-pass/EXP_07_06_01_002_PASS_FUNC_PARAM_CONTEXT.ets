/**
 * @id EXP_07_06_01_002_PASS_FUNC_PARAM_CONTEXT
 * @expect compile-pass
 * @section 7.6.1
 * @design 函数参数提供上下文：foo({name: "Alice", age: 18}) 中 Person 类型从参数类型推断
 * @note 正向用例：验证函数参数上下文推断对象字面量的类类型
 */
class Person {
    name: string = ""
    age: number = 0
}
function foo(p: Person): void {}
foo({name: "Alice", age: 18})
