/**
 * @id GEN_05_01_04_104_FAIL_NEVER
 * @expect compile-fail
 * @section 5.2
 * @design out-variant 通配符 X<C> 不是 X<never> 子类型
 * @note 反向用例：验证 out-variant T 实例化为约束类型，不可赋值给 X<never>（spec 5.1.4 行 525）
 */
class C {}
interface X<out T extends C> {
    read(): T;
}
function foo(o: Object): void {
    if (o instanceof X) {  // Type of o is X<C>
        let o2: X<never> = o;  // Compile-time error: X<C> not subtype of X<never>
    }
}
