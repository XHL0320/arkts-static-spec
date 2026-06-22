/**
 * @id SEM_15_09_101
 * @expect runtime
 * @section 15.9
 * @design 覆写运行时
 * @note 运行时用例
 */
class B { f(): string { return "b"; } } class D extends B { override f(): string { return "d"; } }
function main(): void { let d: D = new D(); let r = d.f(); if (r != "d") throw new Error("fail"); console.log("verified"); }
