/**
 * @id SEM_15_11_08_099
 * @expect compile-fail
 * @section 15.11.8
 * @design 调用时重载拒绝
 * @note 反向用例
 */
function f(x: int): void {} function main(): void { f(true); }
