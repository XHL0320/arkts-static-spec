/**
 * @id SEM_15_10_099
 * @expect compile-fail
 * @section 15.10
 * @design 重载无效参数拒绝
 * @note 反向用例
 */
function foo(x: int): void {} function main(): void { foo("s"); }
