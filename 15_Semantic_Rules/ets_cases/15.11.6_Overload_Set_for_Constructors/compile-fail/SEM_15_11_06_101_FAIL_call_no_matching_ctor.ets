/**
 * @id SEM_15_11_06_101_FAIL_call_no_matching_ctor
 * @expect compile-fail
 * @section 15.11.6
 * @design 调用参数无匹配构造器
 * @note 反向用例
 */
class C { constructor(x: int) {} constructor(x: string) {} }
function main(): void { let c: C = new C(true); }
