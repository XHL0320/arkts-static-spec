/**
 * @id CLS_09_07_026_RUNTIME_ABSTRACT_OVERRIDE_NONABSTRACT
 * @expect runtime
 * @section 9.7.3
 * @design 抽象方法override非抽象方法运行时dispatch
 * @note 运行时用例
 */
abstract class Base26 { foo(): string { return "base" } }
class Child26 extends Base26 { override foo(): string { return "child" } }
function main(): void { let b: Base26 = new Child26(); if (b.foo() != "child") { throw new Error("bad") } console.log("verified") }
