/**
 * @id SEM_15_11_09_001
 * @expect compile-pass
 * @section 15.11.9
 * @design 重载与覆写交互：子类同时重载和覆写
 * @note 正向用例：Derived 覆写 process(int) 并增加 process(string) 重载
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
