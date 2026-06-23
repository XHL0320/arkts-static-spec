/**
 * @id SEM_15_02_05_004_PASS_union_to_base
 * @expect compile-pass
 * @section 15.2.5
 * @design Derived1 和 Derived2 都是 Base 的子类型，Derived1|Derived2 <: Base
 * @note 来自规范 15.2.5 例：x = y OK
 */
class Base {}
class Derived1 extends Base {}
class Derived2 extends Base {}
function main(): void {
    let x: Base
    let y: Derived1|Derived2 = new Derived1()
    x = y
}
