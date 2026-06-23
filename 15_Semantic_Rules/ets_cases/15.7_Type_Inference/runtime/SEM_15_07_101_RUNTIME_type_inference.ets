/**
 * @id SEM_15_07_101_RUNTIME_type_inference
 * @expect runtime
 * @section 15.7
 * @design 类型推断运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
