/**
 * @id SEM_15_02_298_FAIL_generic_interface_super_assign
 * @expect compile-fail
 * @section 15.2.2
 * @design 泛型超接口不可赋值给子接口类型变量：I 不是 J 的子类型
 * @note 来自规范 15.2.2 例：j = i 编译错误
 */
interface I<U, V> {
    foo(u: U): U
    bar(v: V): V
}
interface J<U, V> extends I<U, V> {
    foo1(p: U|V): U|V
}
class Y<U, V> implements J<U, V> {
    foo(u: U): U { return u }
    bar(v: V): V { return v }
    foo1(p: U|V): U|V { return p }
}
function main(): void {
    let i: I<int, boolean>
    let j: J<int, boolean>
    j = i
}
