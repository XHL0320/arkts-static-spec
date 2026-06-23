/**
 * @id SEM_15_10_00_204_RUNTIME_overloading
 * @expect runtime
 * @section 15.10
 * @design 重载运行时行为
 * @note 运行时用例
 */
function foo(x: int): string { return x.toString(); }
function main(): void { let r = foo(42); if (r != "42") throw new Error("fail"); console.log("verified"); }
