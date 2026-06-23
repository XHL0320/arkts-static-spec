/**
 * @id CLS_09_10_017_FAIL_STATIC_NOT_INHERITED
 * @expect compile-fail
 * @section 9.10
 * @design static方法不被继承 — 子类无法通过实例访问父类static方法
 * @note 反向用例：子类引用不存在的static方法应编译失败
 */
class Base17 { static foo(): void {} }
class Child17 extends Base17 {}
function test(): void { Child17.foo() }
