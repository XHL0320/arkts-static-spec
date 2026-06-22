/**
 * @id SEM_15_09_099
 * @expect compile-fail
 * @section 15.9
 * @design 覆写拒绝
 * @note 反向用例
 */
class B { f(x: int): void {} } class D extends B { override f(x: string): void {} }
function main(): void {}
