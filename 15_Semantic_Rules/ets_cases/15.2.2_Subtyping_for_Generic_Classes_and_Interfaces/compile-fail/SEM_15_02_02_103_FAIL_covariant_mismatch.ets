/**
 * @id SEM_15_02_02_103_FAIL_covariant_mismatch
 * @expect compile-fail
 * @section 15.2.2
 * @design 协变类型参数错误：F<out T> 时 F<U1> 不是 F<U0> 的超类型
 * @note 来自规范 15.2.2 例：let f1: F<U1> = new F<U0> 编译错误
 */
class U0 {}
class U1 extends U0 {}
class F<out T> {}
function main(): void {
    let f1: F<U1> = new F<U0>()
}
