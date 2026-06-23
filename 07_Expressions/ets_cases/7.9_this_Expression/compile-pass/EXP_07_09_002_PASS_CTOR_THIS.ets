/**
 * @id EXP_07_09_002_PASS_CTOR_THIS
 * @expect compile-pass
 * @section 7.9
 * @design 构造器中使用 this：this.field = value 在构造器中初始化字段
 * @note 正向用例：验证构造器中 this 可正常引用正在构造的对象
 */
class MyClass {
    value: int = 0
    constructor(v: int) {
        this.value = v
    }
}
let x: MyClass = new MyClass(99)
