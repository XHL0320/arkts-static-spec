/**
 * @id SEM_15_11_08_100_RUNTIME_call_overload
 * @expect runtime
 * @section 15.11.8
 * @design 调用时重载运行时
 * @note 运行时用例
 */
function f(x: int): string { return "ok"; }
function main(): void { let r = f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
