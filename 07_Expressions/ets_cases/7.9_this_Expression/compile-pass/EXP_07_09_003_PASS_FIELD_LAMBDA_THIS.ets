/**
 * @id EXP_07_09_003_PASS_FIELD_LAMBDA_THIS
 * @expect compile-pass
 * @section 7.9
 * @design 字段初始化 lambda 中使用 this：lambda 体内 this 引用该字段所属的类实例
 * @note 正向用例：验证字段初始化器中 lambda 表达式的 this 类型
 */
class MyClass {
    value: int = 10
    getValue: () => int = (): int => {
        return this.value
    }
}
let x: MyClass = new MyClass()
let v: int = x.getValue()
