/**
 * @id SEM_15_08_05_100
 * @expect runtime
 * @section 15.8.5
 * @design 控制流运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
