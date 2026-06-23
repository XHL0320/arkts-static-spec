/**
 * @id SEM_15_08_07_003_PASS_assign_smart_cast
 * @expect compile-pass
 * @section 15.8.7
 * @design 规范 15.8.7：new Derived初始化Base变量后调用Derived方法
 * @note 正向用例：let b: Base=new Derived后b.method()安全
 */
class Base {}
class Derived extends Base {
    method(): void {}
}
function goo(): void {
    let b: Base = new Derived();
    b.method();
}
function main(): void {
    goo();
}
