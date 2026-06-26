
/**
 * @id CLS_09_09_023_RUNTIME_INHERITANCE_CTOR_CHAIN
 * @expect runtime
 * @section 9.9.1
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class GP { gpVal: string = "gp"; constructor() {} }
class P extends GP { pVal: string = "p"; constructor() { super() } }
class C extends P { cVal: string = "c"; constructor() { super() } }
function main(): void { let c: C = new C(); if (c.gpVal!="gp" || c.pVal!="p" || c.cVal!="c") { throw new Error("fail") } console.log("verified") }
