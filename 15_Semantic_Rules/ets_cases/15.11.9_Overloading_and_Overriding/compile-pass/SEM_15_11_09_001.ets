/**
 * @id SEM_15_11_09_001
 * @expect compile-pass
 * @section 15.11.9
 * @design 重载与覆写交互
 * @note 正向用例
 */
class Base { process(x: int): string { return "base"; } }
class Derived extends Base {
    override process(x: int): string { return "derived"; }
    process(x: string): string { return "str"; }
}
function main(): void {
    let d: Derived = new Derived();
    console.log(d.process(42));
}
