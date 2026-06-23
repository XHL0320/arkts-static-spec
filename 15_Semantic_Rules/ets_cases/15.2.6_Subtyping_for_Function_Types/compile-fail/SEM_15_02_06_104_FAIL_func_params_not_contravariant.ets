/**
 * @id SEM_15_02_06_104_FAIL_func_params_not_contravariant
 * @expect compile-fail
 * @section 15.2.6
 * @design 参数类型需逆变：Derived 参数 → Base 参数不合法
 * @note 来自规范 15.2.6 例：bb = dd 编译错误
 */
class Base {}
class Derived extends Base {}
function main(): void {
    let bb: (p: Base) => Base = (p: Base): Base => { return p }
    let dd: (p: Derived) => Derived = (p: Derived): Derived => { return p }
    bb = dd
}
