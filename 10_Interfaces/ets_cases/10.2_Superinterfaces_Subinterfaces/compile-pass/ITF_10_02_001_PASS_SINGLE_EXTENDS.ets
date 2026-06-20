/**
 * @id ITF_10_02_001_PASS_SINGLE_EXTENDS
 * @expect compile-pass
 * @section 10.2
 * @design 单继承
 * @note 正向用例：验证接口单继承通过编译
 */
interface A {
    foo(): void;
}
interface B extends A {
    bar(): void;
}
