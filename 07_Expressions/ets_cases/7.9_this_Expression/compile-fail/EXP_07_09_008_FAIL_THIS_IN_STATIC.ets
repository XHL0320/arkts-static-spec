/**
 * @id EXP_07_09_008_FAIL_THIS_IN_STATIC
 * @expect compile-fail
 * @section 7.9
 * @design 静态方法中使用 this：静态方法不属于实例，this 应报编译时错误
 * @note 反向用例：验证静态方法中 this 引用应产生编译时错误
 */
class MyClass {
    static value: int = 42
    static getValue(): int {
        return this.value
    }
}
let v: int = MyClass.getValue()
