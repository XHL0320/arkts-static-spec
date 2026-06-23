/**
 * @id EXP_07_11_03_006_FAIL_TYPEREF_INSTANCE_METHOD
 * @expect compile-fail
 * @section 7.11.3
 * @design typeReference.identifier 形式调用实例方法：方法未声明 static，应编译时错误
 * @note 反向用例：typeReference 调用的方法必须是 static，实例方法不符合要求
 */
class MyClass {
    doSomething(): void {}
}

function main(): void {
    MyClass.doSomething()
}
