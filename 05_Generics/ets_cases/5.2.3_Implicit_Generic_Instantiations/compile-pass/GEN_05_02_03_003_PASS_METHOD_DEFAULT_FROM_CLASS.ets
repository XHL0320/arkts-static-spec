/**
 * @id GEN_05_02_03_003_PASS_METHOD_DEFAULT_FROM_CLASS
 * @expect compile-pass
 * @section 5.3
 * @design 方法默认类型参数来自类
 * @note 正向用例：验证方法类型参数默认值来自类的类型参数
 */
class A<T> {
    foo<U = T>(p: U): void {}
    bar<V = T>(): void {}
}
