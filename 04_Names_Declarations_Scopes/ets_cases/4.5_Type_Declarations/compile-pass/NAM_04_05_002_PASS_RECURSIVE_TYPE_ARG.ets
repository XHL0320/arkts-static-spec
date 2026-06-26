/**
 * @id NAM_04_05_002_PASS_RECURSIVE_TYPE_ARG
 * @expect compile-pass
 * @section 4.5
 * @design 递归别名-泛型类型参数
 * @note 正向用例：验证作为泛型类型参数的递归引用
 */
class C<T> {}
type B = C<B>;
