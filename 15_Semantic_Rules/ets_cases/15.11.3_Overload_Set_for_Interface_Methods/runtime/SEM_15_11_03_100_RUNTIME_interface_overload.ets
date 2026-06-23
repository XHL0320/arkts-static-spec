/**
 * @id SEM_15_11_03_100_RUNTIME_interface_overload
 * @expect runtime
 * @section 15.11.3
 * @design 接口方法重载运行时
 * @note 运行时用例
 */
interface I { f(x: int): string; }
class C implements I { f(x: int): string { return "ok"; } }
function main(): void { let c: C = new C(); let r = c.f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
