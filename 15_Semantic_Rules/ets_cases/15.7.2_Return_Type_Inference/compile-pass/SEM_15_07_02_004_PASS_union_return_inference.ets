/**
 * @id SEM_15_07_02_004_PASS_union_return_inference
 * @expect compile-pass
 * @section 15.7.2
 * @design 规范 15.7.2：多return语句推断联合返回类型
 * @note 正向用例：bar返回Derived1|Derived2联合类型
 */
class Base {}
class Derived1 extends Base {}
class Derived2 extends Base {}
function bar(condition: boolean): Base {
    if (condition) {
        return new Derived1();
    } else {
        return new Derived2();
    }
}
function main(): void {
    let r: Base = bar(true);
    console.log("union return inference OK");
}
