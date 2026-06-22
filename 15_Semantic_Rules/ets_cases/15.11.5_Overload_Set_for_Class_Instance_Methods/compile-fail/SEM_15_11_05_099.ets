/**
 * @id SEM_15_11_05_099
 * @expect compile-fail
 * @section 15.11.5
 * @design 实例方法重载拒绝
 * @note 反向用例
 */
class C { f(x: int): void {} } function main(): void { let c: C = new C(); c.f("s"); }
