/**
 * @id NAM_04_03_006_PASS_TYPE_PARAM_SCOPE
 * @expect compile-pass
 * @section 4.3
 * @design 类型参数作用域
 * @note 正向用例：验证泛型类型参数在类声明中可用
 */
class MyContainer<T> {
    value: T;
    constructor(v: T) {
        this.value = v;
    }
}
