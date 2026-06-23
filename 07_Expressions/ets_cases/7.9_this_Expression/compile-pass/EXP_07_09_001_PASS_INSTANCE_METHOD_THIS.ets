/**
 * @id EXP_07_09_001_PASS_INSTANCE_METHOD_THIS
 * @expect compile-pass
 * @section 7.9
 * @design 类实例方法中使用 this：this.field 访问当前对象字段，this.method() 调用当前方法
 * @note 正向用例：验证 this 在实例方法中可正常引用当前对象
 */
class MyClass {
    value: int = 42
    getValue(): int {
        return this.value
    }
    twice(): int {
        return this.getValue() * 2
    }
}
let x: MyClass = new MyClass()
let v: int = x.twice()
