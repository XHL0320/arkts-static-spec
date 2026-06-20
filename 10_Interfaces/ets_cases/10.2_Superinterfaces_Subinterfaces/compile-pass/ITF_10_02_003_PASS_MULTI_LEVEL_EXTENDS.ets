/**
 * @id ITF_10_02_003_PASS_MULTI_LEVEL_EXTENDS
 * @expect compile-pass
 * @section 10.2
 * @design 多层继承
 * @note 正向用例：验证多层继承链通过编译
 */
interface A {
    a(): void;
}
interface B extends A {
    b(): void;
}
interface C extends B {
    c(): void;
}
