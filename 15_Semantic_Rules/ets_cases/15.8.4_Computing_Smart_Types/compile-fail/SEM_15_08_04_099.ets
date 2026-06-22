/**
 * @id SEM_15_08_04_099
 * @expect compile-fail
 * @section 15.8.4
 * @design 智能类型拒绝
 * @note 反向用例
 */
function main(): void { let x: string|int = 1; let s: string = x; }
