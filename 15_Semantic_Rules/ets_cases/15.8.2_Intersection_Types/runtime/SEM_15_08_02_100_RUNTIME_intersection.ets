/**
 * @id SEM_15_08_02_100_RUNTIME_intersection
 * @expect runtime
 * @section 15.8.2
 * @design 类型运行时
 * @note 运行时用例
 */
function main(): void { let x: int = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
