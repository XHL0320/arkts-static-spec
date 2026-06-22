/**
 * @id SEM_15_11_9_003
 * @expect compile-pass
 * @section 15.11.9
 * @design 子类重写部分重载
 * @note ⽐正向用例
 */
class Base {
    compute(x: int): string { return "base"; }
    compute(x: string): string { return "base-str"; }
}
class Derived extends Base {
    compute(x: int): string { return "derived"; }
}
function main(): void {
    let d: Derived = new Derived();
    console.log(d.compute(1) + d.compute("s"));
}
