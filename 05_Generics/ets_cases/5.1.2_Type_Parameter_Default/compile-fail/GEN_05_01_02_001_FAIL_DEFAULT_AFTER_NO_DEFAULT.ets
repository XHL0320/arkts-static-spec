/**
 * @id GEN_05_01_02_001_FAIL_DEFAULT_AFTER_NO_DEFAULT
 * @expect compile-fail
 * @section 5.1
 * @design 无默认参数跟在有默认参数后
 * @note 反向用例：验证有默认后有无默认参数编译错误
 */
class C1<T1, T2 = number, T3> {}
