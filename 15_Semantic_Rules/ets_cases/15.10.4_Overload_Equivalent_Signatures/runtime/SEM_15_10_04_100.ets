/**
 * @id SEM_15_10_04_100
 * @expect runtime
 * @section 15.10.4
 * @design 等价签名运行时
 * @note 运行时用例
 */
function foo(x: int): string { return "i"; }
function main(): void { let r = foo(1); if (r != "i") throw new Error("fail"); console.log("verified"); }
