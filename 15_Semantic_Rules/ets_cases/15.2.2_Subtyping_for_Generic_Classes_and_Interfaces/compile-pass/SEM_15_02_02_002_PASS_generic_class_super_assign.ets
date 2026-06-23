/**
 * @id SEM_15_02_02_002_PASS_generic_class_super_assign
 * @expect compile-pass
 * @section 15.2.2
 * @design 泛型类 C<U,V> extends T<U,V>，子类实例可赋值给超类类型变量
 * @note 来自规范 15.2.2 例：t = new C<int,boolean> OK
 */
class T<U, V> {
    foo(p: U|V): U|V { return p }
}
class C<U, V> extends T<U, V> {
    bar(u: U): U { return u }
}
function main(): void {
    let t: T<int, boolean> = new C<int, boolean>()
}
