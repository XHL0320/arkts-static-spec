/**
 * @id GEN_05_02_016_FAIL_WILDCARD_NOT_SUBTYPE_ANY
 * @expect compile-fail
 * @section 5.2
 * @design X<*> 不是 X<Any> 的子类型（invariant T）
 * @note 反向用例：验证 instanceof 通配符类型不可赋值给 X<Any>（spec 5.1.4 行 413-419）
 */
class X<T> {
    p: T;
    constructor(v: T) { this.p = v; }
}
function bar(x: X<Any>): void {
    x.p = "a";
}
function foo(obj: Object): void {
    if (obj instanceof X) {
        bar(obj);  // Compile-time error: X<*> is not a subtype of X<Any>
    }
}
