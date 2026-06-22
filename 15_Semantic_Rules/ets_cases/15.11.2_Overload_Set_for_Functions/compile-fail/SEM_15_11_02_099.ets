/**
 * @id SEM_15_11_02_099
 * @expect compile-fail
 * @section 15.11.2
 * @design 函数重载集拒绝
 * @note 反向用例
 */
function f(x: int): void {} function main(): void { f(true); }
