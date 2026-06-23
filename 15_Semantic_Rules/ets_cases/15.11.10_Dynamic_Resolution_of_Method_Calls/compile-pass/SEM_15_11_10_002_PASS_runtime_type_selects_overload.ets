/**
 * @id SEM_15_11_10_002_PASS_runtime_type_selects_overload
 * @expect compile-pass
 * @section 15.11.10
 * @design 运行时类型决定重载
 * @note ⽐正向用例
 */
class Base {
    show(x: int): string { return "base"; }
}
class Derived extends Base {
    show(x: int): string { return "derived"; }
}
function main(): void {
    let b: Base = new Derived();
    console.log(b.show(1));
}
