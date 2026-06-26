/**
 * @id NAM_04_05_103_FAIL_PARAM_SELF_DEPEND
 * @expect compile-fail
 * @section 4.5
 * @design 类型参数自身依赖
 * @note 反向用例：验证类型参数自身循环依赖
 */
type X<T extends T> = T;
