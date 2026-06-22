/**
 * @id SEM_15_11_03_099
 * @expect compile-fail
 * @section 15.11.3
 * @design 接口方法重载类型拒绝
 * @note 反向用例
 */
interface I { f(x: int): void; f(x: string): void; }
class C implements I { f(x: int): void {} f(x: string): void {} }
function main(): void { let c: C = new C(); c.f(true); }
