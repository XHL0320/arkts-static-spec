/**
 * @id GEN_05_02_02_002_PASS_EXPLICIT_METHOD_INST
 * @expect compile-pass
 * @section 5.2.2
 * @design 方法明确实例化
 * @note 正向用例：验证方法的明确泛型实例化
 */
class A {
    method<T>(): void {}
}
let a: A = new A();
a.method<string>();
