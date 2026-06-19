/**
 * @id CLS_09_10_023_RUNTIME_OVERRIDE_VIA_BASE_REF
 * @expect runtime
 * @section 9.10
 */
class Base23 { getValue(): int { return 100 } }
class Child23 extends Base23 { override getValue(): int { return 200 } }
function main(): void { let b: Base23 = new Child23(); if (b.getValue() != 200) { throw new Error("fail") } console.log("verified") }
