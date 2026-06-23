/**
 * @id SEM_15_01_08_100_RUNTIME_summary
 * @expect runtime
 * @section 15.1.8
 * @design 语义总结运行时行为
 * @note 运行时用例
 */
function main(): void { let a = 1 + 2; if (a != 3) throw new Error("fail"); console.log("verified"); }
