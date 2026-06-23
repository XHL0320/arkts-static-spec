/**
 * @id SEM_15_02_202_PASS_interface_to_object
 * @expect compile-pass
 * @section 15.2.1
 * @design 无 extends 子句的接口 S 是 Object 的直接子类型：S<:Object
 * @note 来自规范 15.2.1 例：interface S {} → let s: S = new A() → foo(s) OK
 */
interface S {
    foo(): void
}
function foo(o: Object): void {}
class A implements S {
    foo(): void {}
}
function main(): void {
    foo(new Object())
    let s: S = new A()
    foo(s)
}
