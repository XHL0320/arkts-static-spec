/**
 * @id SEM_15_14_101_RUNTIME_compatibility
 * @expect runtime
 * @section 15.14
 * @design 兼容特性运行时
 * @note 运行时用例
 */
function main(): void { let x = 42; if (x != 42) throw new Error("fail"); console.log("verified"); }
