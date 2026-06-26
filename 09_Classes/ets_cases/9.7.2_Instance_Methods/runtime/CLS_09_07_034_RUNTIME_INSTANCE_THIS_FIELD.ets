
/**
 * @id CLS_09_07_034_RUNTIME_INSTANCE_THIS_FIELD
 * @expect runtime
 * @section 9.7.2
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class C34 { val: int = 7; getVal(): int { return this.val } setVal(v: int): void { this.val = v } }
function main(): void { let c: C34 = new C34(); c.setVal(77); if (c.getVal() != 77) { throw new Error("fail") } console.log("verified") }
