/**
 * @id SEM_15_11_09_099
 * @expect compile-fail
 * @section 15.11.9
 * @design 重载覆写交互拒绝
 * @note 反向用例
 */
class B { f(x: int): void {} } class D extends B { override f(x: string): void {} }
function main(): void {}
