/**
 * @id SEM_15_11_02_100_RUNTIME_func_overload
 * @expect runtime
 * @section 15.11.2
 * @design 函数重载集运行时
 * @note 运行时用例
 */
function f(x: int): string { return "ok"; }
function main(): void { let r = f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
