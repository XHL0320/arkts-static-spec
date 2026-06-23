/**
 * @id SEM_15_08_03_200_RUNTIME_difference
 * @expect runtime
 * @section 15.8.3
 * @design 类型运行时
 * @note 运行时用例
 */
function main(): void { let x: string = "hi"; if (x != "hi") throw new Error("fail"); console.log("verified"); }
