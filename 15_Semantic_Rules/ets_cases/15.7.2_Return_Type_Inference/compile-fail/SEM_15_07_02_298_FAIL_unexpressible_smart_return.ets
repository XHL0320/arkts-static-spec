/**
 * @id SEM_15_07_02_298_FAIL_unexpressible_smart_return
 * @expect compile-fail
 * @section 15.7.2
 * @design 规范 15.7.2：推断返回类型为C&I无法表达时报错
 * @note 反向用例：instanceof ternary返回c: C或new D()产生C&I交集类型
 */
class C {}
interface I {}
class D extends C implements I {}
function foo(c: C) {
    return c instanceof I ? c : new D();
}
function main(): void {
    let r = foo(new D());
}
