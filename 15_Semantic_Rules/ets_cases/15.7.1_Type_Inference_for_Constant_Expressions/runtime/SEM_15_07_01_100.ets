/**
 * @id SEM_15_07_01_100
 * @expect runtime
 * @section 15.7.1
 * @design 常量表达式运行时
 * @note 运行时用例
 */
function main(): void { let r = 10 + 32; if (r != 42) throw new Error("fail"); console.log("verified"); }
