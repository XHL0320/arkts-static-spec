/**
 * @id NAM_04_05_026_FAIL_GENERIC_WO_ARG_DEF
 * @expect compile-fail
 * @section 4.5.1
 * @design 泛型类型别名定义中自身引用未提供类型参数
 * @note 反向用例：验证 type A<T> = Array<A> 定义中未提供类型参数导致编译报错（spec 4.5.1 行534）
 */
type A<T> = Array<A>
