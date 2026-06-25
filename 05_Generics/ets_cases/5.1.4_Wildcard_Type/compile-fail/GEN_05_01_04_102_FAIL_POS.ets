/**
 * @id GEN_05_01_04_102_FAIL_POS
 * @expect compile-fail
 * @section 5.1.4
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
