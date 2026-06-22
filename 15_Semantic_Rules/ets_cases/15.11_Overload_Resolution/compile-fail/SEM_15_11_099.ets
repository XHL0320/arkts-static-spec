/**
 * @id SEM_15_11_099
 * @expect compile-fail
 * @section 15.11
 * @design 重载解析拒绝
 * @note 反向用例
 */
function f(x: int): void {} function main(): void { f(true); }
