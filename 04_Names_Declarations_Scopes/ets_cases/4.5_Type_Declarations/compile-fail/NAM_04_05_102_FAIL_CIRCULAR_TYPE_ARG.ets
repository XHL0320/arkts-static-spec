/**
 * @id NAM_04_05_102_FAIL_CIRCULAR_TYPE_ARG
 * @expect compile-fail
 * @section 4.5
 * @design 循环泛型依赖
 * @note 反向用例：验证通过泛型类型的循环依赖编译错误
 */
type C<T> = T;
type A = C<A>;
