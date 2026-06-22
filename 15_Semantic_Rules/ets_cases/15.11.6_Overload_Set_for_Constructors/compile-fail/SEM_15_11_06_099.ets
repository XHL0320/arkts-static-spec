/**
 * @id SEM_15_11_06_099
 * @expect compile-fail
 * @section 15.11.6
 * @design 构造函数重载拒绝
 * @note 反向用例
 */
class C { constructor(x: int) {} } function main(): void { let c: C = new C("s"); }
