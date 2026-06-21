/**
 * @id ITF_10_05_006_PASS_MULTI_INTERFACE_IMPL
 * @expect compile-pass
 * @section 10.5
 * @design 类实现多接口
 * @note 正向用例：验证类 implements 多个接口
 */
interface A {
    foo(): void;
}
interface B {
    bar(): void;
}
class C implements A, B {
    foo(): void {}
    bar(): void {}
}
