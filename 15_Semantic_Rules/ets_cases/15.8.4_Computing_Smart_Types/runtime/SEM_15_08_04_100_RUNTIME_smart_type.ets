/**
 * @id SEM_15_08_04_100_RUNTIME_smart_type
 * @expect runtime
 * @section 15.8.4
 * @design 智能类型运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
