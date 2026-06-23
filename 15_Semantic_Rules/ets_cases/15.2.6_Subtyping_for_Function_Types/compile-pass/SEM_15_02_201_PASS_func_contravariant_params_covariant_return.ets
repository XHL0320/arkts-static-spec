/**
 * @id SEM_15_02_201_PASS_func_contravariant_params_covariant_return
 * @expect compile-pass
 * @section 15.2.6
 * @design 参数逆变且返回值协变：(p:Base)=>Derived <: (p:Derived)=>Base
 * @note 来自规范 15.2.6 例：db = bd OK
 */
class Base {}
class Derived extends Base {}
function main(): void {
    let db: (p: Derived) => Base = (p: Derived): Base => { return p }
    let bd: (p: Base) => Derived = (p: Base): Derived => { return p as Derived }
    db = bd
}
