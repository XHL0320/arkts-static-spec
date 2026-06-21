/**
 * @id GEN_05_01_031_FAIL_CIRCULAR_WITH_DEFAULT
 * @expect compile-fail
 * @section 5.1
 * @design 类型参数默认值导致循环依赖
 * @note 反向用例：验证类型参数默认值不能形成循环依赖
 */
class F<T1 = T2, T2 extends T1> {
    value: T1;
}
