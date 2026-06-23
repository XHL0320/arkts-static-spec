/**
 * @id SEM_15_11_05_100_FAIL_instance_arg_mismatch
 * @expect compile-fail
 * @section 15.11.5
 * @design 实例方法重载拒绝：参数不匹配
 * @note 反向用例：string 不匹配实例方法 int 参数
 */
class C { f(x: int): void {} }
function main(): void {
    let c: C = new C();
    c.f("s");
}
