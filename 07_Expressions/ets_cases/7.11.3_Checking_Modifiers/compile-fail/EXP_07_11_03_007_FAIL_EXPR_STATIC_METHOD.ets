/**
 * @id EXP_07_11_03_007_FAIL_EXPR_STATIC_METHOD
 * @expect compile-fail
 * @section 7.11.3
 * @design expression.identifier 形式调用静态方法：方法声明 static，应编译时错误
 * @note 反向用例：expression 调用的方法不能是 static，静态方法不符合要求
 */
class MyClass {
    static doSomething(): void {}
}

function main(): void {
    let obj: MyClass = new MyClass()
    obj.doSomething()
}
