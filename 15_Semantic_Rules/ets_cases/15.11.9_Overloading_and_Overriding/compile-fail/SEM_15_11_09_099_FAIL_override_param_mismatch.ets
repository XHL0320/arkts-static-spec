/**
 * @id SEM_15_11_09_099
 * @expect compile-fail
 * @section 15.11.9
 * @design 重载覆写交互拒绝：参数类型不兼容
 * @note 反向用例：覆写时参数类型从 int 变为 string 不合法
 */
class B { f(x: int): void {} }
class D extends B { override f(x: string): void {} }
function main(): void {}
