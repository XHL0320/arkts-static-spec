
/**
 * @id CLS_09_07_049_RUNTIME_OVERRIDE_CHAIN
 * @expect runtime
 * @section 9.7.2
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Base049 { val(): int { return 1 } }
class Mid049 extends Base049 { override val(): int { return super.val()+1 } }
class Derived049 extends Mid049 { override val(): int { return super.val()+1 } }
function main(): void { let d: Derived049 = new Derived049(); if (d.val()!=3) { throw new Error("fail") } console.log("verified") }
