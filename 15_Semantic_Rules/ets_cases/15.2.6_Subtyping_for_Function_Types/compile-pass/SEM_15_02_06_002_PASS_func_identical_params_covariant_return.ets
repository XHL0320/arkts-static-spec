/**
 * @id SEM_15_02_06_002_PASS_func_identical_params_covariant_return
 * @expect compile-pass
 * @section 15.2.6
 * @design 相同参数类型且返回值协变时赋值正确：(p:Base)=>Derived <: (p:Base)=>Base
 * @note 来自规范 15.2.6 例：bb = bd OK
 */
class Base {}
class Derived extends Base {}
function main(): void {
    let bb: (p: Base) => Base = (p: Base): Base => { return p }
    let bd: (p: Base) => Derived = (p: Base): Derived => { return p as Derived }
    bb = bd
}
