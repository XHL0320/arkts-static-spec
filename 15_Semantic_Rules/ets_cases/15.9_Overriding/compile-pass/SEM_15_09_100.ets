/**
 * @id SEM_15_09_100
 * @expect compile-pass
 * @section 15.9
 * @design 覆写基础：方法覆写
 * @note 正向用例
 */
class Base { greet(): string { return "base"; } }
class Derived extends Base { override greet(): string { return "derived"; } }
function main(): void {
    let d: Derived = new Derived();
    console.log(d.greet());
}
