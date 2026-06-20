/**
 * @id ITF_10_02_002_PASS_MULTIPLE_EXTENDS
 * @expect compile-pass
 * @section 10.2
 * @design 多继承
 * @note 正向用例：验证接口多继承通过编译
 */
interface X {
    x(): void;
}
interface Y {
    y(): void;
}
interface Z extends X, Y {
    z(): void;
}
