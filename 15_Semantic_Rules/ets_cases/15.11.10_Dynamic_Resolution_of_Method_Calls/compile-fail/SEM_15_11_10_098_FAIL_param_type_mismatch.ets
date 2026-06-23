/**
 * @id SEM_15_11_10_098_FAIL_param_type_mismatch
 * @expect compile-fail
 * @section 15.11.10
 * @design 参数类型不匹配
 * @note 反向用例
 */
class C { proc(x: int): void {} }
function main(): void { let c: C = new C(); c.proc("bad"); }
