/**
 * @id SEM_15_11_101_RUNTIME_overload_resolution
 * @expect runtime
 * @section 15.11
 * @design 重载解析运行时
 * @note 运行时用例
 */
function f(x: int): string { return "ok"; }
function main(): void { let r = f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
