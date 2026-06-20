/**
 * @id NAM_04_03_014_FAIL_TYPE_PARAM_IN_STATIC
 * @expect compile-fail
 * @section 4.3
 * @design 类型参数不能用于静态成员声明
 * @note 反向用例：spec 4.3 行329 "The scope of a type parameter name in a class or
 *       interface declaration is that entire declaration, excluding static member
 *       declarations." 静态字段引用 T 应报编译错误。
 *
 * GAP POTENTIAL: 编译器可能允许（两阶段声明先注册名、静态成员延迟类型检查）
 */
class Container<T> {
    static default: T | undefined = undefined;
}
