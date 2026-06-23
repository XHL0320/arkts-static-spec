/**
 * @id SEM_15_02_201_PASS_generic_interface_impl_assign
 * @expect compile-pass
 * @section 15.2.2
 * @design 泛型接口实现实例可赋值给接口类型变量
 * @note 来自规范 15.2.2 例：i = x（X implements I<U,V>）
 */
interface I<U, V> {
    foo(u: U): U
    bar(v: V): V
}
class X<U, V> implements I<U, V> {
    foo(u: U): U { return u }
    bar(v: V): V { return v }
}
function main(): void {
    let i: I<int, boolean> = new X<int, boolean>()
}
