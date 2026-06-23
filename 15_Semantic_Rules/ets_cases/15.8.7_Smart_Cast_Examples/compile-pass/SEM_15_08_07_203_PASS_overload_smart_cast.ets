/**
 * @id SEM_15_08_07_203_PASS_overload_smart_cast
 * @expect compile-pass
 * @section 15.8.7
 * @design 规范 15.8.7：智能类型影响重载决议
 * @note 正向用例：a:Base=new Base调fooBase, b:Base=new Derived调fooDerived
 */
class Base {
    b: int = 1;
}
class Derived extends Base {
    d: int = 2;
}
function fooBase(p: Base): void {}
function fooDerived(p: Derived): void {}
overload foo { fooDerived, fooBase }
function too(): void {
    let a: Base = new Base();
    foo(a);
    let b: Base = new Derived();
    foo(b);
}
function main(): void {
    too();
}
