/**
 * @id SEM_15_02_299_FAIL_generic_class_sub_assign
 * @expect compile-fail
 * @section 15.2.2
 * @design 泛型超类实例不可赋值给子类类型变量
 * @note 来自规范 15.2.2 例：c = new T<int,boolean> 编译错误
 */
class T<U, V> {
    foo(p: U|V): U|V { return p }
}
class C<U, V> extends T<U, V> {
    bar(u: U): U { return u }
}
function main(): void {
    let c: C<int, boolean> = new T<int, boolean>()
}
