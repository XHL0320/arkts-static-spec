/**
 * @id CLS_09_07_033_RUNTIME_METHOD_BODY_CONTROL_FLOW
 * @expect runtime
 * @section 9.7.7
 */
class Flow { compute(n: int): int { let r: int = 1; for (let i: int = 1; i <= n; i++) { r = r * i } return r } }
function main(): void { let f: Flow = new Flow(); if (f.compute(5) != 120) { throw new Error("fail") } console.log("verified") }
