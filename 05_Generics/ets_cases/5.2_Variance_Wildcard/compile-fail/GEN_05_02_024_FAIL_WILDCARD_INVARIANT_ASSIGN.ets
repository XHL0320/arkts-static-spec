/**
 * @id GEN_05_02_024_FAIL_WILDCARD_INVARIANT_ASSIGN
 * @expect compile-fail
 * @section 5.2
 * @design 两个通配符类型间 invariant 属性赋值
 * @note 反向用例：验证不同通配符实例化间属性赋值编译错误（spec 5.1.4 行 590-591）
 */
class X<T> {
    p: T;
    constructor(p: T) { this.p = p; }
}
function foo(a: Any, b: Any): void {
    if (a instanceof X && b instanceof X) {
        let a1 = a;  // X<*>
        let a2 = b;  // X<*>
        a.p = b.p;   // Compile-time error: invariance prevents assignment
    }
}
