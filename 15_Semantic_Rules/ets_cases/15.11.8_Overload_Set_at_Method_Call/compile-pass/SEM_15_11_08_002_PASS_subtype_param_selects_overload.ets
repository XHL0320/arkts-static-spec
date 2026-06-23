/**
 * @id SEM_15_11_08_002_PASS_subtype_param_selects_overload
 * @expect compile-pass
 * @section 15.11.8
 * @design 子类型参数选择合适重载
 * @note ⽐正向用例
 */
class Base { name: string = ""; }
class Derived extends Base { extra: int = 0; }
function handle(x: Base): string { return "base"; }
function handle(x: Derived): string { return "derived"; }
function main(): void {
    let d: Derived = new Derived();
    console.log(handle(d));
}
