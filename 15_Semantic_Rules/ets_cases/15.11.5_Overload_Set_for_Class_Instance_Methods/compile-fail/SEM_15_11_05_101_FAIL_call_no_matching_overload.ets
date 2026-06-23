/**
 * @id SEM_15_11_05_101_FAIL_call_no_matching_overload
 * @expect compile-fail
 * @section 15.11.5
 * @design 调用参数无匹配重载
 * @note 反向用例
 */
class C { proc(x: int): void {} proc(x: string): void {} }
function main(): void { let c: C = new C(); c.proc(true); }
