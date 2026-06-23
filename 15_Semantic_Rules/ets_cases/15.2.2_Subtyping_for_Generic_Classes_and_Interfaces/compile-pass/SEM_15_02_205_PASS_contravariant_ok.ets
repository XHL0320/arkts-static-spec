/**
 * @id SEM_15_02_205_PASS_contravariant_ok
 * @expect compile-pass
 * @section 15.2.2
 * @design 逆变类型参数正确：E<in T> 时 E<U1> >: E<U0>
 * @note 来自规范 15.2.2 例：let e1: E<U1> = new E<U0> OK
 */
class U0 {}
class U1 extends U0 {}
class E<in T> {}
function main(): void {
    let e1: E<U1> = new E<U0>()
}
