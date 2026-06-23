/**
 * @id GEN_05_01_04_004_FAIL_INVARIANT
 * @expect compile-fail
 * @section 5.2
 * @design 通配符写入 invariant-position（propread）
 * @note 反向用例：验证 invariant T 通配符属性写入编译错误（spec 5.1.4 行 489）
 */
class C {}
interface X<T extends C> {
    read(): T;
    write(p: T): void;
    prop: T;
}
function foo(o: Object): void {
    if (o instanceof X) {
        o.prop = o.read();  // Compile-time error: T in invariant position
    }
}
