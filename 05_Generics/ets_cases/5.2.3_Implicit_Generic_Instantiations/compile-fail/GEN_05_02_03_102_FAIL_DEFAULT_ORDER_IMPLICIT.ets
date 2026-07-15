/**
 * @id GEN_05_02_03_102_FAIL_DEFAULT_ORDER_IMPLICIT
 * @expect compile-fail
 * @section 5.2.3
 * @design 有默认值的类型参数后跟无默认值参数
 * @note 反向用例：验证有默认值的类型参数后不能有无默认值参数
 */
class C<T1, T2 = number, T3> {
    value1: T1;
    value2: T2;
    value3: T3;
}
// 隐式实例化：T2 有默认值，T3 无默认值 → 违反顺序约束
// 编译器应在声明 C 时即报错，不论是否实例化
