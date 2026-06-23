/**
 * @id SEM_15_01_06_100_FAIL_MISMATCH
 * @expect compile-fail
 * @section 15.1.6
 * @design 其他上下文类型不匹配拒绝
 * @note 反向用例：int → string 类型不兼容
 */
function main(): void { let x: string = 42; }
