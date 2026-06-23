/**
 * @id SEM_15_01_06_100_RUNTIME_other_contexts
 * @expect runtime
 * @section 15.1.6
 * @design 其他上下文运行时行为
 * @note 运行时用例
 */
function main(): void { let x = 42; let y: int = x; if (y != 42) throw new Error("fail"); console.log("verified"); }
