/**
 * @id SEM_15_11_07_100
 * @expect runtime
 * @section 15.11.7
 * @design 重载警告运行时
 * @note 运行时用例
 */
function f(x: int): string { return "ok"; }
function main(): void { let r = f(1); if (r != "ok") throw new Error("fail"); console.log("verified"); }
