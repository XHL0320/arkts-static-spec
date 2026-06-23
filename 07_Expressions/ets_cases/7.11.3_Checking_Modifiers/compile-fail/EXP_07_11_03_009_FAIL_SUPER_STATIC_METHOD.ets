/**
 * @id EXP_07_11_03_009_FAIL_SUPER_STATIC_METHOD
 * @expect compile-fail
 * @section 7.11.3
 * @design super.identifier 形式调用静态方法：超类方法为 static，应编译时错误
 * @note 反向用例：super 调用的方法不能是 static，静态方法不符合要求
 */
class Base {
    static doSomething(): void {}
}

class Derived extends Base {
    doSomething(): void {
        super.doSomething()
    }
}
