/**
 * @id SEM_15_02_06_103_FAIL_func_too_few_params
 * @expect compile-fail
 * @section 15.2.6
 * @design F 必要参数过少：() => Base 不能从 (p:Base)=>Base 赋值（m=0 必要参数不足）
 * @note 来自规范 15.2.6 例：let g: () => Base = bb 编译错误
 */
class Base {}
function main(): void {
    let bb: (p: Base) => Base = (p: Base): Base => { return p }
    let g: () => Base = bb
}
