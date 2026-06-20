/**
 * @id ITF_10_06_002_PASS_DIAMOND_INHERITANCE
 * @expect compile-pass
 * @section 10.6
 * @design 菱形继承
 * @note 正向用例：验证接口菱形继承合并相同成员
 */
interface A {
    common(): void;
}
interface B extends A {
    b(): void;
}
interface C extends A {
    c(): void;
}
interface D extends B, C {
    d(): void;
}
class ImplD implements D {
    common(): void {}
    b(): void {}
    c(): void {}
    d(): void {}
}
