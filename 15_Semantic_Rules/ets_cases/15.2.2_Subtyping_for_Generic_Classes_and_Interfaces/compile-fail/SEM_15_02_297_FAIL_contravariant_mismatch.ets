/**
 * @id SEM_15_02_297_FAIL_contravariant_mismatch
 * @expect compile-fail
 * @section 15.2.2
 * @design 逆变类型参数错误：E<in T> 时 E<U0> 不是 E<U1> 的超类型
 * @note 来自规范 15.2.2 例：let e0: E<U0> = new E<U1> 编译错误
 */
class U0 {}
class U1 extends U0 {}
class E<in T> {}
function main(): void {
    let e0: E<U0> = new E<U1>()
}
