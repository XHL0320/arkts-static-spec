/**
 * @id ITF_10_06_001_PASS_INHERITANCE_CHAIN
 * @expect compile-pass
 * @section 10.6
 * @design 接口继承链
 * @note 正向用例：验证接口通过继承获得父接口成员
 */
interface Base {
    baseMethod(): void;
}
interface Derived extends Base {
    derivedMethod(): void;
}
class Impl implements Derived {
    baseMethod(): void {}
    derivedMethod(): void {}
}
