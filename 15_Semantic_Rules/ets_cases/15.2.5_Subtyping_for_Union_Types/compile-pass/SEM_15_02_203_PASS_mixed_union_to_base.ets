/**
 * @id SEM_15_02_203_PASS_mixed_union_to_base
 * @expect compile-pass
 * @section 15.2.5
 * @design Derived1|string 每个成员（Derived1 <: Base, string <: Base|string）
 * @note 来自规范 15.2.5 例：x = y（Base|string = Derived1|string）OK
 */
class Base {}
class Derived1 extends Base {}
function main(): void {
    let x: Base|string
    let y: Derived1|string = new Derived1()
    x = y
}
