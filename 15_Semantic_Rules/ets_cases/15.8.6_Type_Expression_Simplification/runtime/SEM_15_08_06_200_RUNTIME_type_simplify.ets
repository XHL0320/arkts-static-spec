/**
 * @id SEM_15_08_06_200_RUNTIME_type_simplify
 * @expect runtime
 * @section 15.8.6
 * @design 类型简化运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
