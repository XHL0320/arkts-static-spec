/**
 * @id SEM_15_11_10_100
 * @expect runtime
 * @section 15.11.10
 * @design 动态解析运行时
 * @note 运行时用例
 */
class B { f(): string { return "b"; } } class D extends B { override f(): string { return "d"; } }
function main(): void { let b: B = new D(); let r = b.f(); if (r != "d") throw new Error("fail"); console.log("verified"); }
