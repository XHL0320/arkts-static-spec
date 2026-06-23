/**
 * @id SEM_15_02_02_006_PASS_covariant_ok
 * @expect compile-pass
 * @section 15.2.2
 * @design 协变类型参数正确：F<out T> 时 F<U0> >: F<U1>
 * @note 来自规范 15.2.2 例：let f0: F<U0> = new F<U1> OK
 */
class U0 {}
class U1 extends U0 {}
class F<out T> {}
function main(): void {
    let f0: F<U0> = new F<U1>()
}
