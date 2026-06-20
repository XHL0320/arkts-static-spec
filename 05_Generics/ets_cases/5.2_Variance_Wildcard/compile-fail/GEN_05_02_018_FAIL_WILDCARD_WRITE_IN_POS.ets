/**
 * @id GEN_05_02_018_FAIL_WILDCARD_WRITE_IN_POS
 * @expect compile-fail
 * @section 5.2
 * @design 通配符写入 in-position（T 实例化为 never）
 * @note 反向用例：验证 invariant T 在 in-position 写入编译错误（spec 5.1.4 行 487）
 */
class C {}
interface X<T extends C> {
    read(): T;
    write(p: T): void;
    prop: T;
}
function foo(o: Object): void {
    if (o instanceof X) {
        o.write(new C());  // Compile-time error: T in "in" position instantiated with never
    }
}
