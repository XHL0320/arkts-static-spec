/**
 * @id EXP_07_11_03_008_FAIL_SUPER_ABSTRACT_METHOD
 * @expect compile-fail
 * @section 7.11.3
 * @design super.identifier 形式调用抽象方法：超类方法为 abstract，应编译时错误
 * @note 反向用例：super 调用的方法不能是 abstract，抽象方法不符合要求
 */
abstract class Base {
    abstract doSomething(): void
}

class Derived extends Base {
    doSomething(): void {
        super.doSomething()
    }
}
