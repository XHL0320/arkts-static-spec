/**
 * @id GEN_05_02_005_PASS_VARIANCE_INTERLEAVE
 * @expect compile-pass
 * @section 5.2
 * @design 变体交错-in-out函数类型
 * @note 正向用例：验证 in/out 在函数类型中的交错
 */
class V<in T1, out T2> {
    private readonly val: T2;
    constructor(v: T2) { this.val = v; }
    foo(p: T1): T2 { return this.val; }
}
