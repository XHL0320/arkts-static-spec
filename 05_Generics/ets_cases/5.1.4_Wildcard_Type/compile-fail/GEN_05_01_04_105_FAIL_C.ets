/**
 * @id GEN_05_01_04_105_FAIL_C
 * @expect compile-fail
 * @section 5.2
 * @design in-variant 通配符 X<never> 不是 X<C> 子类型
 * @note 反向用例：验证 in-variant T 实例化为 never，不可赋值给 X<C>（spec 5.1.4 行 549）
 */
class C {}
interface X<in T extends C> {
    write(p: T): void;
}
function foo(o: Object): void {
    if (o instanceof X) {  // Type of o is X<never>
        let o1: X<C> = o;  // Compile-time error: X<never> not subtype of X<C>
    }
}
