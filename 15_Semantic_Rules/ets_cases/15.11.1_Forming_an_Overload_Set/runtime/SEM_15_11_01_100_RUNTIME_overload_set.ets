/**
 * @id SEM_15_11_01_100_RUNTIME_overload_set
 * @expect runtime
 * @section 15.11.1
 * @design 重载集运行时
 * @note 运行时用例
 */
function f(x: int): string { return x.toString(); }
function main(): void { let r = f(1); if (r != "1") throw new Error("fail"); console.log("verified"); }
