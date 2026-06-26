
/**
 * @id CLS_09_07_041_RUNTIME_STATIC_CALC
 * @expect runtime
 * @section 9.7.1
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Calc041 { static fact(n: int): int { let r: int = 1; for (let i: int=2;i<=n;i++) {r=r*i} return r } }
function main(): void { if (Calc041.fact(5)!=120) { throw new Error("fail") } console.log("verified") }
