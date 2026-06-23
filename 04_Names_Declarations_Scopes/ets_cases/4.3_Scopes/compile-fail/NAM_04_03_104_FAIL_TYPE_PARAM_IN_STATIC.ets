/**
 * @id NAM_04_03_104_FAIL_TYPE_PARAM_IN_STATIC
 * @expect compile-fail
 * @section 4.3
 * @design 类型参数不能用于静态成员声明
 * @note 反向用例：验证静态成员引用类型参数 T 编译错误
 *       规范 4.3 — 类型参数作用域不包括静态成员
 */
class Container<T> {
    static default: T | undefined = undefined;
}
