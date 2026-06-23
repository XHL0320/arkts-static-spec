/**
 * @id SEM_15_11_04_100_RUNTIME_static_overload
 * @expect runtime
 * @section 15.11.4
 * @design 静态方法重载运行时
 * @note 运行时用例
 */
class C { static f(x: int): string { return "ok"; } }
function main(): void { let r = C.f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
