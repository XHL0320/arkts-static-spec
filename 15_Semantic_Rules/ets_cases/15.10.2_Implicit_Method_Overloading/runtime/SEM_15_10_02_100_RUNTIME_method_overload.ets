/**
 * @id SEM_15_10_02_100_RUNTIME_method_overload
 * @expect runtime
 * @section 15.10.2
 * @design 方法重载运行时
 * @note 运行时用例
 */
class C { foo(x: int): string { return "i"; } foo(x: string): string { return "s"; } }
function main(): void { let c: C = new C(); if (c.foo(1) != "i") throw new Error("fail"); console.log("verified"); }
