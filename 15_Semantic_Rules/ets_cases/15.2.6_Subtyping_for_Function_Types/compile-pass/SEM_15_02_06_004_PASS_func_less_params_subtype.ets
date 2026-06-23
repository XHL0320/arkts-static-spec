/**
 * @id SEM_15_02_06_004_PASS_func_less_params_subtype
 * @expect compile-pass
 * @section 15.2.6
 * @design F 参数 ≤ S 参数时合法：(p:Base)=>Base <: (p:Base, n:number)=>Base
 * @note 来自规范 15.2.6 例：let f: (p:Base, n:number)=>Base = bb OK
 */
class Base {}
function main(): void {
    let bb: (p: Base) => Base = (p: Base): Base => { return p }
    let f: (p: Base, n: number) => Base = bb
}
