/**
 * @id EXP_07_09_004_PASS_OBJECT_LITERAL_METHOD_THIS
 * @expect compile-pass
 * @section 7.9
 * @design 对象字面量方法中使用 this：对象字面量的方法中 this 类型为对象字面量类型
 * @note 正向用例：验证对象字面量方法中的 this 引用
 */
interface HasValue {
    value: int
    getValue(): int
}
class MyClass implements HasValue {
    value: int = 42
    getValue(): int {
        return this.value
    }
}
let obj: HasValue = {
    value: 100,
    getValue(): int {
        return this.value
    }
}
let v: int = obj.getValue()
