/**
 * @id SEM_15_11_09_200_RUNTIME_overload_override
 * @expect runtime
 * @section 15.11.9
 * @design 重载覆写交互运行时
 * @note 运行时用例
 */
class B { f(x: int): string { return "b"; } }
class D extends B { override f(x: int): string { return "d"; } }
function main(): void { let d: D = new D(); let r = d.f(1); if (r != "d") throw new Error("fail"); console.log("verified"); }
