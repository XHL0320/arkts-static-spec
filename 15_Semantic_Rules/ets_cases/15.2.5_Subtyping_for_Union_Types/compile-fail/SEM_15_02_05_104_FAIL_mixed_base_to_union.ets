/**
 * @id SEM_15_02_05_104_FAIL_mixed_base_to_union
 * @expect compile-fail
 * @section 15.2.5
 * @design Base|string 不是 Derived1|string 的子类型（Base 不是 Derived1 子类型）
 * @note 来自规范 15.2.5 例：y = x 编译错误
 */
class Base {}
class Derived1 extends Base {}
function main(): void {
    let x: Base|string = new Base()
    let y: Derived1|string = new Derived1()
    y = x
}
