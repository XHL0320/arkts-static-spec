/**
 * @id GEN_05_02_017_FAIL_WILDCARD_NOT_SUBTYPE_CONSTRAINT
 * @expect compile-fail
 * @section 5.2
 * @design X<*> 不是 X<C> 或 X<never> 的子类型
 * @note 反向用例：验证有约束的 invariant T 通配符不可赋值（spec 5.1.4 行 479-482）
 */
class C {}
interface X<T extends C> {
    read(): T;
    write(p: T): void;
    prop: T;
}
function foo(o: Object): void {
    if (o instanceof X) {
        let o1: X<C> = o;      // Compile-time error: X<*> not subtype of X<C>
        let o2: X<never> = o;  // Compile-time error: X<*> not subtype of X<never>
    }
}
