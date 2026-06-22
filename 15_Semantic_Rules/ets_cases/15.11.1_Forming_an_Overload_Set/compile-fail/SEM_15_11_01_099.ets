/**
 * @id SEM_15_11_01_099
 * @expect compile-fail
 * @section 15.11.1
 * @design 重载集类型不匹配
 * @note 反向用例
 */
function f(x: int): void {} function main(): void { f("s"); }
