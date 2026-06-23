/**
 * @id SEM_15_02_09_200_RUNTIME_difference
 * @expect runtime
 * @section 15.2.9
 * @design 差分类型运行时
 * @note 运行时用例
 */
function main(): void { let x: int = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
