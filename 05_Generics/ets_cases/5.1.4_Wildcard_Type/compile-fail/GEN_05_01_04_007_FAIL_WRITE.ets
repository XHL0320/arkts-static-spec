/**
 * @id GEN_05_02_023_FAIL_IN_WILDCARD_WRITE
 * @expect compile-fail
 * @section 5.2
 * @design in-variant 通配符写入（T 实例化为 never）
 * @note 反向用例：验证 in-variant T 通配符下写入编译错误（spec 5.1.4 行 555）
 */
class C {}
interface X<in T extends C> {
    write(p: T): void;
}
function foo(o: Object): void {
    if (o instanceof X) {  // Type of o is X<never>
        o.write(new C());  // Compile-time error: T in "in" position instantiated with never
    }
}
