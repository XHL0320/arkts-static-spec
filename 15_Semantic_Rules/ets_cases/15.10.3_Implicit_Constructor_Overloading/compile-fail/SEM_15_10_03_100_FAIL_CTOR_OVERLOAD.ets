/**
 * @id SEM_15_10_03_100_FAIL_CTOR_OVERLOAD
 * @expect compile-fail
 * @section 15.10.3
 * @design 构造函数重载非法参数
 * @note 反向用例
 */
class C { constructor(x: int) {} constructor(x: string) {} }
function main(): void { let c: C = new C(true); }
