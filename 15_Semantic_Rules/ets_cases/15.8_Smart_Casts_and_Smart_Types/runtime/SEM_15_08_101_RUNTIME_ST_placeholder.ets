/**
 * @id SEM_15_08_101_RUNTIME_ST_placeholder
 * @expect runtime
 * @section 15.8
 * @design 智能转换运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
