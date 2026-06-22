/**
 * @id SEM_15_01_101
 * @expect runtime
 * @section 15.1
 * @design 语义基础运行时
 * @note 运行时用例
 */
function main(): void { let x = 1 + 2; if (x != 3) throw new Error("fail"); console.log("verified"); }
