/**
 * @id SEM_15_02_05_105_FAIL_base_to_union
 * @expect compile-fail
 * @section 15.2.5
 * @design Base 不是 Derived1|Derived2 的子类型，不可逆赋值
 * @note 来自规范 15.2.5 例：y = x 编译错误
 */
class Base {}
class Derived1 extends Base {}
class Derived2 extends Base {}
function main(): void {
    let x: Base = new Base()
    let y: Derived1|Derived2 = new Derived1()
    y = x
}
