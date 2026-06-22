/**
 * @id SEM_15_14_01_100
 * @expect runtime
 * @section 15.14.1
 * @design 三元表达式运行时
 * @note 运行时用例
 */
function main(): void { let x = true ? 42 : 0; if (x != 42) throw new Error("fail"); console.log("verified"); }
