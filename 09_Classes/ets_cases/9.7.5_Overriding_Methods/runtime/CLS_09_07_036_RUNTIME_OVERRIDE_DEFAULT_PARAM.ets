
/**
 * @id CLS_09_07_036_RUNTIME_OVERRIDE_DEFAULT_PARAM
 * @expect runtime
 * @section 9.7.5
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Base36 { greet(name: string): string { return "hi " + name } }
class Child36 extends Base36 { override greet(name: string): string { return "hello " + name } }
function main(): void { let b: Base36 = new Child36(); if (b.greet("x") != "hello x") { throw new Error("fail") } console.log("verified") }
