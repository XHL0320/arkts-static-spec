/**
 * @id SEM_15_11_05_200_RUNTIME_instance_overload
 * @expect runtime
 * @section 15.11.5
 * @design 实例方法重载运行时
 * @note 运行时用例
 */
class C { f(x: int): string { return "ok"; } }
function main(): void { let c: C = new C(); let r = c.f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
