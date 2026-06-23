/**
 * @id EXP_07_11_02_007_FAIL_TYPEREF_INSTANCE_METHOD
 * @expect compile-fail
 * @section 7.11.2
 * @design typeReference 形式调用不存在的静态方法，候选集合为空导致编译时错误
 * @note 反向用例：typeReference of type T 中 T 类没有名为 identifier 的静态方法，空集合应报错
 */
class MyClass {
    instanceMethod(): void {}
}

function main(): void {
    MyClass.nonExistentStatic()
}
